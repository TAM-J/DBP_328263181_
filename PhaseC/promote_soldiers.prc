CREATE OR REPLACE PROCEDURE promote_soldiers
IS
    CURSOR c_soldiers IS
        SELECT PersonalNumber, SRank, DeploymentDate
        FROM Soldier
        FOR UPDATE OF SRank;
    
    v_months_deployed NUMBER;
    v_new_rank VARCHAR2(20);
BEGIN
    FOR soldier IN c_soldiers LOOP
        v_months_deployed := MONTHS_BETWEEN(SYSDATE, soldier.DeploymentDate);
        
        IF v_months_deployed >= 36 AND soldier.SRank = 'Private' THEN
            v_new_rank := 'Corporal';
        ELSIF v_months_deployed >= 60 AND soldier.SRank = 'Corporal' THEN
            v_new_rank := 'Sergeant';
        ELSIF v_months_deployed >= 84 AND soldier.SRank = 'Sergeant' THEN
            v_new_rank := 'Staff Sergeant';
        ELSE
            v_new_rank := soldier.SRank;
        END IF;
        
        IF v_new_rank != soldier.SRank THEN
            UPDATE Soldier
            SET SRank = v_new_rank
            WHERE CURRENT OF c_soldiers;
            
            DBMS_OUTPUT.PUT_LINE('Soldier ' || soldier.PersonalNumber || ' promoted from ' || soldier.SRank || ' to ' || v_new_rank);
        END IF;
    END LOOP;
    
    COMMIT;
EXCEPTION
    WHEN OTHERS THEN
        DBMS_OUTPUT.PUT_LINE('An error occurred: ' || SQLERRM);
        ROLLBACK;
END;
/
