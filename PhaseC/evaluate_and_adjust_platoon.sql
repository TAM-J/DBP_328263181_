-- Declare block for procedure
DECLARE
  -- Procedure to evaluate and adjust platoon
  PROCEDURE evaluate_and_adjust_platoon(p_platoon_number IN NUMBER) IS
    v_avg_age NUMBER;
    v_ideal_age_range_min NUMBER := 20;
    v_ideal_age_range_max NUMBER := 30;
    
    CURSOR c_young_soldiers IS
        SELECT s.PersonalNumber, s.SName, s.BirthDate
        FROM Soldier s
        JOIN Squad sq ON s.SquadNumber = sq.SquadNumber
        WHERE sq.PlatoonNumber = p_platoon_number
        AND TRUNC(MONTHS_BETWEEN(SYSDATE, s.BirthDate) / 12) < v_ideal_age_range_min;
    
    CURSOR c_old_soldiers IS
        SELECT s.PersonalNumber, s.SName, s.BirthDate
        FROM Soldier s
        JOIN Squad sq ON s.SquadNumber = sq.SquadNumber
        WHERE sq.PlatoonNumber = p_platoon_number
        AND TRUNC(MONTHS_BETWEEN(SYSDATE, s.BirthDate) / 12) > v_ideal_age_range_max;
  BEGIN
    -- Get average age of soldiers in the platoon
    v_avg_age := get_avg_age_in_platoon(p_platoon_number);
    DBMS_OUTPUT.PUT_LINE('Average age in Platoon ' || p_platoon_number || ': ' || v_avg_age || ' years');
    
    -- Evaluate age composition
    IF v_avg_age < v_ideal_age_range_min THEN
        DBMS_OUTPUT.PUT_LINE('Platoon is too young on average. Consider transferring in some older soldiers.');
    ELSIF v_avg_age > v_ideal_age_range_max THEN
        DBMS_OUTPUT.PUT_LINE('Platoon is too old on average. Consider transferring in some younger soldiers.');
    ELSE
        DBMS_OUTPUT.PUT_LINE('Platoon age composition is within ideal range.');
    END IF;
    
    -- List young soldiers
    DBMS_OUTPUT.PUT_LINE('Soldiers younger than ' || v_ideal_age_range_min || ' years:');
    FOR young_soldier IN c_young_soldiers LOOP
        DBMS_OUTPUT.PUT_LINE('  ' || young_soldier.SName || ' (Age: ' || 
            TRUNC(MONTHS_BETWEEN(SYSDATE, young_soldier.BirthDate) / 12) || ' years)');
    END LOOP;
    
    -- List old soldiers
    DBMS_OUTPUT.PUT_LINE('Soldiers older than ' || v_ideal_age_range_max || ' years:');
    FOR old_soldier IN c_old_soldiers LOOP
        DBMS_OUTPUT.PUT_LINE('  ' || old_soldier.SName || ' (Age: ' || 
            TRUNC(MONTHS_BETWEEN(SYSDATE, old_soldier.BirthDate) / 12) || ' years)');
    END LOOP;
    
    -- Reorganize platoon
    reorganize_platoon_squads(p_platoon_number);
    DBMS_OUTPUT.PUT_LINE('Platoon ' || p_platoon_number || ' has been reorganized.');
  EXCEPTION
    WHEN OTHERS THEN
        DBMS_OUTPUT.PUT_LINE('An error occurred: ' || SQLERRM);
        RAISE;
  END evaluate_and_adjust_platoon;

BEGIN
  -- Test variables
  DECLARE
    v_test_platoon_number NUMBER := 248379; -- Use a valid platoon number
  BEGIN
    -- Call the procedure
    evaluate_and_adjust_platoon(v_test_platoon_number);
  END;

EXCEPTION
  WHEN OTHERS THEN
    DBMS_OUTPUT.PUT_LINE('An error occurred in the main block: ' || SQLERRM);
    ROLLBACK;
END;
/
