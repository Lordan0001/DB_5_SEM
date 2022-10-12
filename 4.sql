ALTER DATABASE OPEN;
--              TASK 1
select name,open_mode from v$pdbs; 

--              TASK 2 
select INSTANCE_NAME from v$instance;

--              TASK 3
select * from PRODUCT_COMPONENT_VERSION;

--              TASK 4 
-- ORACLE DATABASE CONFIGURATION ASSISTANT;
--grant  sysdba to  bvd in sqlplus

--              TASK 5 
select name,open_mode from v$pdbs;

--              TASK 6 
CREATE TABLESPACE ts_bvd4
DATAFILE 'C:\Work\lab4\ts_bvd.dbf' 
size 7M
REUSE AUTOEXTEND ON NEXT 5M 
MAXSIZE 20M
LOGGING
ONLINE;
commit;
--DROP TABLESPACE ts_bvd4 INCLUDING CONTENTS AND DATAFILES;

select TABLESPACE_NAME, BLOCK_SIZE, MAX_SIZE from sys.dba_tablespaces order by tablespace_name;

CREATE TEMPORARY TABLESPACE ts_bvd_temp4
TEMPFILE 'C:\Work\lab4\ts_bvd_temp4.dbf' size 5M
REUSE AUTOEXTEND ON NEXT 3M 
MAXSIZE 30M;
commit;



create role rl_bvd;
commit;

drop role rl_bvd;

grant create session, create any table, create any view, create any procedure,ALTER ANY SEQUENCE,CREATE SEQUENCE  to rl_bvd;
grant  create  view to rl_bvd;
grant drop any table, drop any view, drop any procedure to rl_bvd;
commit;

SELECT * FROM DBA_ROLES;

create profile pf_bvd limit
password_life_time 180 -- кол-во дней жизни пароля
sessions_per_user 3 -- кол-во сессий для пользователя
FAILED_LOGIN_ATTEMPTS 12 -- кол-во попыток входа
PASSWORD_LOCK_TIME 1 -- кол-во дней блокировки после ошибки
PASSWORD_Reuse_time 1 -- через сколько дней можно повторить пароль
password_grace_time default -- кол-во дней предупреждения о смене пароля
connect_time 180 -- время соединения
idle_time 30; -- простой
commit;

SELECT * FROM dba_profiles;

create user u1_bvd_pdb identified by orcl
default tablespace ts_bvd4 quota unlimited on ts_bvd4
profile pf_bvd
account unlock;

--drop user u1_bvd_pdb CASCADE;

grant rl_bvd to u1_bvd_pdb;
commit;

SELECT * FROM dba_users;

select GRANTEE, PRIVILEGE from DBA_SYS_PRIVS where GRANTEE='U1_BVD_PDB'; 

commit;

--              TASK 7 
DROP table u1table

CREATE TABLE u1table(
id number GENERATED ALWAYS AS IDENTITY primary key,
word varchar2(50)
);

INSERT into u1table(word) values('CHANGED');
INSERT into u1table(word) values('a');
INSERT into u1table(word) values('b');
commit;
SELECT * FROM U1KAATABLE;
--              TASK 8
select * from u1table; 
select * from dba_users;--switch to vlad_pdb
select * from DBA_TABLESPACES; 
select * from DBA_DATA_FILES;   
select * from DBA_TEMP_FILES;  
select * from DBA_ROLES;
select * from DBA_ROLE_PRIVS t1 inner join DBA_SYS_PRIVS t2 on t1.GRANTED_ROLE = t2.GRANTEE where t1.GRANTEE='U1_BVD_PDB'; 

select * from DBA_PROFILES; 
--              TASK 9

create user cbvd identified by orcl
account unlock;

--              TASK 10
grant create session to  cbvd

select * from v$session where USERNAME is not null;

select PRIVILEGE from USER_SYS_PRIVS; 


