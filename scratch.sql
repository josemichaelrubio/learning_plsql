SELECT table_name FROM dba_tables WHERE owner = 'HR';
SELECT * FROM dba_users ORDER BY created desc;
SELECT * FROM dba_users where USERNAME = 'OPS$ORACLE' ORDER BY created desc;
SELECT user FROM dual;
SELECT * FROM USER_ROLE_PRIVS WHERE USERNAME = 'hr';
GRANT ALL PRIVILEGES TO sys;
CREATE TABLESPACE hr_tbs DATAFILE 'hr_tbs.dat' SIZE 50M AUTOEXTEND ON;
CREATE TEMPORARY TABLESPACE hr_temp TEMPFILE 'hr_temp.dbf' SIZE 20M AUTOEXTEND ON;
SELECT pdb_name, status FROM dba_pdbs ORDER BY pdb_id;
ALTER USER hr ACCOUNT UNLOCK;
@?/demo/schema/human_resources/hr_main.sql;
CREATE USER hr IDENTIFIED BY your_password;
select table_name from dba_tables where TABLE_NAME = 'hr';
ALTER USER hr ACCOUNT UNLOCK;
ALTER USER hr ACCOUNT UNLOCK;



CREATE USER hr IDENTIFIED BY mypassword1;
GRANT CONNECT, RESOURCE TO new_hr;
ALTER SESSION SET CONTAINER = your_pdb_name;

