/*
PL/SQL Outputs
    - Not an output language
    - To set up outputs:
        - Set SERVEROUTPUT ON
        - DBMS_OUTPUT
        - dbms_output.put_line('output text');
Nested blocks
    - Blocks can be nested

*/

SET SERVEROUTPUT ON;

BEGIN
    dbms_output.put_line('Hello World');
    BEGIN
        dbms_output.put_line('Hello World 2');
    END;
END;