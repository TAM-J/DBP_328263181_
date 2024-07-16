-- 1
SELECT s.PersonalNumber, s.SName, s.SRank, sq.SquadName, p.PlatoonName,
       COUNT(s2.PersonalNumber) AS SameRankInPlatoon
FROM Soldier s
JOIN Squad sq ON s.SquadNumber = sq.SquadNumber
JOIN Platoon p ON sq.PlatoonNumber = p.PlatoonNumber
JOIN Soldier s2 ON s2.SquadNumber = sq.SquadNumber
WHERE s.SRank IN (&RankList)
  AND s2.SRank = s.SRank
GROUP BY s.PersonalNumber, s.SName, s.SRank, sq.SquadName, p.PlatoonName
HAVING COUNT(s2.PersonalNumber) > 1
ORDER BY p.PlatoonName, COUNT(s2.PersonalNumber) DESC;

-- Example usage: '&RankList' could be replaced with ('Sergeant', 'Corporal', 'Private First Class')
-- 2
SELECT b.BattalionName, s.PersonalNumber, s.SName, s.SRank, 
       s.DeploymentDate,
       TRUNC(MONTHS_BETWEEN(SYSDATE, s.BirthDate)/12) AS Age,
       TRUNC(MONTHS_BETWEEN(SYSDATE, s.DeploymentDate)/12) AS YearsDeployed
FROM Soldier s
JOIN Squad sq ON s.SquadNumber = sq.SquadNumber
JOIN Platoon p ON sq.PlatoonNumber = p.PlatoonNumber
JOIN Company c ON p.CompanyNumber = c.CompanyNumber
JOIN Battalion b ON c.BattalionNumber = b.BattalionNumber
WHERE s.DeploymentDate BETWEEN TO_DATE('&StartDate', 'YYYY-MM-DD') AND TO_DATE('&EndDate', 'YYYY-MM-DD')
  AND TRUNC(MONTHS_BETWEEN(SYSDATE, s.BirthDate)/12) > &MinAge
ORDER BY YearsDeployed DESC, Age DESC;

-- Example usage: 
-- '&StartDate' could be replaced with '2020-01-01'
-- '&EndDate' could be replaced with '2023-12-31'
-- '&MinAge' could be replaced with 25

-- 3 
SELECT s.PersonalNumber, s.SName, s.SRank, c.CompanyName,
       COUNT(DISTINCT sq.SquadNumber) AS SquadsInCompany,
       COUNT(DISTINCT s2.PersonalNumber) AS SoldiersInCompany,
       AVG(TRUNC(MONTHS_BETWEEN(SYSDATE, s2.BirthDate)/12)) AS AvgAgeInCompany
FROM Soldier s
JOIN Squad sq ON s.SquadNumber = sq.SquadNumber
JOIN Platoon p ON sq.PlatoonNumber = p.PlatoonNumber
JOIN Company c ON p.CompanyNumber = c.CompanyNumber
JOIN Soldier s2 ON s2.SquadNumber = sq.SquadNumber
WHERE UPPER(s.SName) LIKE UPPER('%&SoldierName%')
  AND s2.SRank NOT IN ('&ExcludedRank1', '&ExcludedRank2')
GROUP BY s.PersonalNumber, s.SName, s.SRank, c.CompanyName
HAVING COUNT(DISTINCT s2.PersonalNumber) > &MinCompanySize
ORDER BY SoldiersInCompany DESC;

-- Example usage: 
-- '&SoldierName' could be replaced with 'Smith'
-- '&ExcludedRank1' could be replaced with 'General'
-- '&ExcludedRank2' could be replaced with 'Colonel'
-- '&MinCompanySize' could be replaced with 50

-- 4
SELECT s.PersonalNumber, s.SName, s.SRank
FROM Soldier s
WHERE MOD(s.PersonalNumber, &Divisor) = 0
  AND s.SRank NOT IN ('&ExcludedRank1', '&ExcludedRank2') -- Add more ranks as needed
ORDER BY s.PersonalNumber;

-- Example usage:
-- &Divisor could be replaced with 5
-- '&ExcludedRank1' could be replaced with 'General'
-- '&ExcludedRank2' could be replaced with 'Colonel'
