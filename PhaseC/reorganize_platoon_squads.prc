CREATE OR REPLACE PROCEDURE reorganize_platoon_squads(p_platoon_number IN NUMBER)
IS
    TYPE squad_record IS RECORD (
        squad_number NUMBER,
        squad_name VARCHAR2(20),
        number_of_soldiers NUMBER
    );
    TYPE squad_table IS TABLE OF squad_record;
    v_squads squad_table;
    
    v_total_soldiers NUMBER := 0;
    v_target_squad_size NUMBER;
    v_current_squad NUMBER := 1;
    v_soldiers_in_current_squad NUMBER := 0;
BEGIN
    -- Get all squads in the platoon
    SELECT SquadNumber, SquadName, NumberOfSoldiers
    BULK COLLECT INTO v_squads
    FROM Squad
    WHERE PlatoonNumber = p_platoon_number;
    
    -- Calculate total number of soldiers
    SELECT SUM(NumberOfSoldiers) INTO v_total_soldiers
    FROM Squad
    WHERE PlatoonNumber = p_platoon_number;
    
    -- Calculate target squad size
    v_target_squad_size := CEIL(v_total_soldiers / v_squads.COUNT);
    
    -- Reorganize squads
    FOR i IN 1..v_squads.COUNT LOOP
        IF v_soldiers_in_current_squad + v_squads(i).number_of_soldiers <= v_target_squad_size THEN
            -- Add soldiers to current squad
            UPDATE Soldier
            SET SquadNumber = v_squads(v_current_squad).squad_number
            WHERE SquadNumber = v_squads(i).squad_number;
            
            v_soldiers_in_current_squad := v_soldiers_in_current_squad + v_squads(i).number_of_soldiers;
        ELSE
            -- Move to next squad
            v_current_squad := v_current_squad + 1;
            v_soldiers_in_current_squad := v_squads(i).number_of_soldiers;
            
            UPDATE Soldier
            SET SquadNumber = v_squads(v_current_squad).squad_number
            WHERE SquadNumber = v_squads(i).squad_number;
        END IF;
    END LOOP;
    
    -- Update squad sizes
    FOR i IN 1..v_squads.COUNT LOOP
        UPDATE Squad
        SET NumberOfSoldiers = (
            SELECT COUNT(*)
            FROM Soldier
            WHERE SquadNumber = v_squads(i).squad_number
        )
        WHERE SquadNumber = v_squads(i).squad_number;
    END LOOP;
    
    COMMIT;
    DBMS_OUTPUT.PUT_LINE('Platoon ' || p_platoon_number || ' reorganized successfully.');
EXCEPTION
    WHEN OTHERS THEN
        DBMS_OUTPUT.PUT_LINE('An error occurred: ' || SQLERRM);
        ROLLBACK;
END;
/
