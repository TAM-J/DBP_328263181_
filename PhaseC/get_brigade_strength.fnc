CREATE OR REPLACE FUNCTION get_brigade_strength(p_brigade_number IN NUMBER)
RETURN NUMBER
IS
    v_total_soldiers NUMBER := 0;
    CURSOR c_battalions IS
        SELECT BattalionNumber
        FROM Battalion
        WHERE BrigadeNumber = p_brigade_number;
    
    v_battalion_number Battalion.BattalionNumber%TYPE;
BEGIN
    FOR battalion_rec IN c_battalions LOOP
        v_battalion_number := battalion_rec.BattalionNumber;
        
        FOR company_rec IN (SELECT CompanyNumber FROM Company WHERE BattalionNumber = v_battalion_number) LOOP
            FOR platoon_rec IN (SELECT PlatoonNumber FROM Platoon WHERE CompanyNumber = company_rec.CompanyNumber) LOOP
                FOR squad_rec IN (SELECT SquadNumber FROM Squad WHERE PlatoonNumber = platoon_rec.PlatoonNumber) LOOP
v_total_soldiers := v_total_soldiers + NVL((SELECT NumberOfSoldiers FROM Squad WHERE SquadNumber = squad_rec.SquadNumber), 0);
                    FROM Squad
                    WHERE SquadNumber = squad_rec.SquadNumber;
                END LOOP;
            END LOOP;
        END LOOP;
    END LOOP;
    
    RETURN v_total_soldiers;
EXCEPTION
    WHEN NO_DATA_FOUND THEN
        DBMS_OUTPUT.PUT_LINE('No data found for Brigade Number: ' || p_brigade_number);
        RETURN 0;
    WHEN OTHERS THEN
        DBMS_OUTPUT.PUT_LINE('An error occurred: ' || SQLERRM);
        RETURN -1;
END;
/
