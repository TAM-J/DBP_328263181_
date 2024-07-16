-- select 1
-- avg soldiers per brigade:--
SELECT 
    b.BrigadeNumber, 
    b.BrigadeName, 
    AVG(sq.NumberOfSoldiers) AS AvgSoldiersPerBrigade
FROM 
    Brigade b
    JOIN Battalion bt ON b.BrigadeNumber = bt.BrigadeNumber
    JOIN Company c ON bt.BattalionNumber = c.BattalionNumber
    JOIN Platoon p ON c.CompanyNumber = p.CompanyNumber
    JOIN Squad sq ON p.PlatoonNumber = sq.PlatoonNumber
GROUP BY 
    b.BrigadeNumber, 
    b.BrigadeName
ORDER BY 
    b.BrigadeNumber;

-- select 2
--gives the 5 battalion's with the highest average number of soldiers per 
--squad and breaks down the deployment date into day, month, and year.
--(could be a couple of battalions with the same avg)
SELECT 
    bt.BattalionNumber, 
    bt.BattalionName, 
    AVG(sq.NumberOfSoldiers) AS AvgSoldiersPerSquad,
    EXTRACT(DAY FROM s.DeploymentDate) AS DeploymentDay,
    EXTRACT(MONTH FROM s.DeploymentDate) AS DeploymentMonth,
    EXTRACT(YEAR FROM s.DeploymentDate) AS DeploymentYear
FROM 
    Soldier s
    JOIN Squad sq ON s.SquadNumber = sq.SquadNumber
    JOIN Platoon p ON sq.PlatoonNumber = p.PlatoonNumber
    JOIN Company c ON p.CompanyNumber = c.CompanyNumber
    JOIN Battalion bt ON c.BattalionNumber = bt.BattalionNumber
GROUP BY 
    bt.BattalionNumber, 
    bt.BattalionName,
    s.DeploymentDate
HAVING 
    AVG(sq.NumberOfSoldiers) IN (
        SELECT * FROM (
            SELECT AVG(sq2.NumberOfSoldiers) AS AvgSoldiersPerSquad
            FROM 
                Battalion bt2
                JOIN Company c2 ON bt2.BattalionNumber = c2.BattalionNumber
                JOIN Platoon p2 ON c2.CompanyNumber = p2.CompanyNumber
                JOIN Squad sq2 ON p2.PlatoonNumber = sq2.PlatoonNumber
            GROUP BY 
                bt2.BattalionNumber
            ORDER BY 
                AVG(sq2.NumberOfSoldiers) DESC
        ) WHERE ROWNUM <= 5
    )
ORDER BY 
    AvgSoldiersPerSquad DESC,
    s.DeploymentDate;

-- select 3
--This query provides a count of soldiers per company,
-- broken down by their rank and deployment year.
SELECT 
    c.CompanyNumber, 
    c.CompanyName, 
    s.SRank, 
    COUNT(s.PersonalNumber) AS NumberOfSoldiers,
    EXTRACT(YEAR FROM s.DeploymentDate) AS DeploymentYear
FROM 
    Soldier s
    JOIN Squad sq ON s.SquadNumber = sq.SquadNumber
    JOIN Platoon p ON sq.PlatoonNumber = p.PlatoonNumber
    JOIN Company c ON p.CompanyNumber = c.CompanyNumber
GROUP BY 
    c.CompanyNumber, 
    c.CompanyName, 
    s.SRank,
    EXTRACT(YEAR FROM s.DeploymentDate)
ORDER BY 
    c.CompanyNumber, 
    s.SRank,
    DeploymentYear;

-- select 4
--lists all soldiers who were deployed in the last year, 
--grouped by brigade, and sorted by deployment date.
SELECT 
    b.BrigadeNumber, 
    b.BrigadeName, 
    s.PersonalNumber, 
    s.SName, 
    s.DeploymentDate,
    EXTRACT(DAY FROM s.DeploymentDate) AS DeploymentDay,
    EXTRACT(MONTH FROM s.DeploymentDate) AS DeploymentMonth,
    EXTRACT(YEAR FROM s.DeploymentDate) AS DeploymentYear
FROM 
    Soldier s
    JOIN Squad sq ON s.SquadNumber = sq.SquadNumber
    JOIN Platoon p ON sq.PlatoonNumber = p.PlatoonNumber
    JOIN Company c ON p.CompanyNumber = c.CompanyNumber
    JOIN Battalion bt ON c.BattalionNumber = bt.BattalionNumber
    JOIN Brigade b ON bt.BrigadeNumber = b.BrigadeNumber
WHERE 
    s.DeploymentDate >= ADD_MONTHS(TRUNC(SYSDATE), -12)
ORDER BY 
    b.BrigadeNumber, 
    s.DeploymentDate;

-- delete 1
-- when there are less soldiers than the avg per squad in brigade
DELETE FROM Soldier
WHERE SquadNumber IN (
    SELECT sq.SquadNumber
    FROM Squad sq
    JOIN Platoon pl ON sq.PlatoonNumber = pl.PlatoonNumber
    JOIN Company co ON pl.CompanyNumber = co.CompanyNumber
    JOIN Battalion ba ON co.BattalionNumber = ba.BattalionNumber
    JOIN Brigade br ON ba.BrigadeNumber = br.BrigadeNumber
    JOIN (
        SELECT s.SquadNumber,
               COUNT(s.PersonalNumber) AS SoldierCount,
               AVG(COUNT(s.PersonalNumber)) OVER (PARTITION BY br.BrigadeNumber) AS AvgSoldierCount
        FROM Soldier s
        JOIN Squad sq ON s.SquadNumber = sq.SquadNumber
        JOIN Platoon pl ON sq.PlatoonNumber = pl.PlatoonNumber
        JOIN Company co ON pl.CompanyNumber = co.CompanyNumber
        JOIN Battalion ba ON co.BattalionNumber = ba.BattalionNumber
        JOIN Brigade br ON ba.BrigadeNumber = br.BrigadeNumber
        GROUP BY s.SquadNumber, br.BrigadeNumber
    ) sc ON sq.SquadNumber = sc.SquadNumber
    WHERE sc.SoldierCount < sc.AvgSoldierCount
);

-- delete 2
-- lowest ranked soldiers in the smallest squads
DELETE FROM Soldier
WHERE PersonalNumber IN (
    SELECT s.PersonalNumber
    FROM Soldier s
    JOIN (
        SELECT sq.SquadNumber, pl.PlatoonNumber, co.CompanyNumber, ba.BattalionNumber, br.BrigadeNumber,
               DENSE_RANK() OVER (PARTITION BY br.BrigadeNumber ORDER BY COUNT(sq.SquadNumber) ASC) AS RankBySquadSize
        FROM Squad sq
        JOIN Platoon pl ON sq.PlatoonNumber = pl.PlatoonNumber
        JOIN Company co ON pl.CompanyNumber = co.CompanyNumber
        JOIN Battalion ba ON co.BattalionNumber = ba.BattalionNumber
        JOIN Brigade br ON ba.BrigadeNumber = br.BrigadeNumber
        GROUP BY sq.SquadNumber, pl.PlatoonNumber, co.CompanyNumber, ba.BattalionNumber, br.BrigadeNumber
    ) sq ON s.SquadNumber = sq.SquadNumber
    JOIN (
        SELECT s.PersonalNumber, br.BrigadeNumber,
               DENSE_RANK() OVER (PARTITION BY br.BrigadeNumber ORDER BY s.SRank ASC) AS RankOrder
        FROM Soldier s
        JOIN Squad sq ON s.SquadNumber = sq.SquadNumber
        JOIN Platoon pl ON sq.PlatoonNumber = pl.PlatoonNumber
        JOIN Company co ON pl.CompanyNumber = co.CompanyNumber
        JOIN Battalion ba ON co.BattalionNumber = ba.BattalionNumber
        JOIN Brigade br ON ba.BrigadeNumber = br.BrigadeNumber
    ) sr ON s.PersonalNumber = sr.PersonalNumber
    WHERE sq.RankBySquadSize = 1 AND sr.RankOrder = 1
);
--update 1:
UPDATE Soldier s
SET s.SRank = 
    CASE s.SRank
        WHEN 'Private' THEN 'Corporal'
        WHEN 'Corporal' THEN 'Sergeant'
        WHEN 'Sergeant' THEN 'Lieutenant'
        WHEN 'Lieutenant' THEN 'Captain'
        WHEN 'Captain' THEN 'Major'
        WHEN 'Major' THEN 'Colonel'
        WHEN 'Colonel' THEN 'General'
        ELSE s.SRank  -- Keep the current rank if it's not in the list
    END
WHERE s.SquadNumber IN (
    SELECT sq.SquadNumber
    FROM Squad sq
    JOIN Platoon pl ON sq.PlatoonNumber = pl.PlatoonNumber
    JOIN Company co ON pl.CompanyNumber = co.CompanyNumber
    JOIN (
        SELECT pl.PlatoonNumber,
               pl.CompanyNumber,
               RANK() OVER (PARTITION BY pl.CompanyNumber ORDER BY COUNT(sq.SquadNumber) DESC) AS RankBySize
        FROM Squad sq
        JOIN Platoon pl ON sq.PlatoonNumber = pl.PlatoonNumber
        GROUP BY pl.PlatoonNumber, pl.CompanyNumber
    ) lp ON pl.PlatoonNumber = lp.PlatoonNumber AND pl.CompanyNumber = lp.CompanyNumber
    WHERE lp.RankBySize = 1
)
AND s.BirthDate < TO_DATE('1999-01-01', 'YYYY-MM-DD');


-- update 2
-- more than two platoons companies date updating
UPDATE Soldier
SET DeploymentDate = TO_DATE(
    TO_CHAR(SYSDATE, 'DD') || '-' || TO_CHAR(SYSDATE, 'MM') || '-' || TO_CHAR(SYSDATE, 'YYYY'),
    'DD-MM-YYYY'
)
WHERE SquadNumber IN (
    SELECT sq.SquadNumber
    FROM Squad sq
    JOIN Platoon pl ON sq.PlatoonNumber = pl.PlatoonNumber
    JOIN Company co ON pl.CompanyNumber = co.CompanyNumber
    JOIN (
        SELECT co.CompanyNumber, COUNT(DISTINCT pl.PlatoonNumber) AS PlatoonCount
        FROM Platoon pl
        JOIN Company co ON pl.CompanyNumber = co.CompanyNumber
        GROUP BY co.CompanyNumber
        HAVING COUNT(DISTINCT pl.PlatoonNumber) > 2
    ) pc ON co.CompanyNumber = pc.CompanyNumber
);
commit;
