-- Test script for analyze_and_reorganize_brigade
DECLARE
  v_brigade_number NUMBER := 830539;
  v_brigade_strength NUMBER;
BEGIN
  -- Call a function
  v_brigade_strength := get_brigade_strength(v_brigade_number);
  DBMS_OUTPUT.PUT_LINE('Brigade ' || v_brigade_number || ' strength: ' || v_brigade_strength || ' soldiers');

  -- Call a procedure
  analyze_and_reorganize_brigade(v_brigade_number);
  
EXCEPTION
  WHEN OTHERS THEN
    DBMS_OUTPUT.PUT_LINE('An error occurred: ' || SQLERRM);
END;
/
