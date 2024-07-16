CREATE OR REPLACE FUNCTION get_avg_age_in_platoon(p_platoon_number IN NUMBER)
RETURN NUMBER
IS
    v_avg_age NUMBER;
BEGIN
    SELECT AVG(MONTHS_BETWEEN(SYSDATE, s.BirthDate) / 12)
    INTO v_avg_age
    FROM Soldier s
    JOIN Squad sq ON s.SquadNumber = sq.SquadNumber
    JOIN Platoon p ON sq.PlatoonNumber = p.PlatoonNumber
    WHERE p.PlatoonNumber = p_platoon_number;
    
    IF v_avg_age IS NULL THEN
        RAISE NO_DATA_FOUND;
    END IF;
    
    RETURN ROUND(v_avg_age, 2);
EXCEPTION
    WHEN NO_DATA_FOUND THEN
        DBMS_OUTPUT.PUT_LINE('No soldiers found in Platoon Number: ' || p_platoon_number);
        RETURN 0;
    WHEN OTHERS THEN
        DBMS_OUTPUT.PUT_LINE('An error occurred: ' || SQLERRM);
        RETURN -1;
END;
/
