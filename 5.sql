ALTER DATABASE OPEN;
ALTER SYSTEM CHECK DATAFILES;

--              TASK 1
select tablespace_name, contents from DBA_TABLESPACES;
--              TASK 2
create tablespace bvd_qdata
  datafile 'C:\Work\lab5\tablespaces\bvd_qdata5.dbf'
  size 10 M
  offline;
  
alter tablespace bvd_qdata online;

--DROP TABLESPACE bvd_qdata INCLUDING CONTENTS AND DATAFILES; 

create role role5;
grant create session,
      create table, 
      create view, 
      create procedure,
      drop any table,
      drop any view,
      drop any procedure to role5;    
grant create session to role5;
commit;

create profile profile5 limit
    password_life_time 180      --кол-во дней жизни пароля
    sessions_per_user 3         --кол-во сессий для юзера
    failed_login_attempts 7     --кол-во попыток ввода
    password_lock_time 1        --кол-во дней блока после ошибок
    password_reuse_time 10      --через скок дней можно повторить пароль
    password_grace_time default --кол-во дней предупрежд.о смене пароля
    connect_time 180            --время соед (мин)
    idle_time 30 ;  
    
create user user5 identified by orcl
default tablespace bvd_qdata quota unlimited on bvd_qdata
profile profile5
account unlock;

alter user user5 quota 2m on bvd_qdata;
grant role5 to user5;



create table bvd1_t1(
id number(15) PRIMARY KEY,
name varchar2(10))
tablespace bvd_qdata;

--DROP TABLE bvd1_t1

insert into bvd1_t1 values(1, 'A');
insert into bvd1_t1 values(2, 'B');
insert into bvd1_t1 values(3, 'C');

SELECT * FROM bvd1_t1;

--              TASK 3
select segment_name, segment_type from DBA_SEGMENTS where tablespace_name='BVD_QDATA';
select * from dba_segments

--              TASK 4

drop table bvd1_t1;

select * from DBA_SEGMENTS where tablespace_name='BVD_QDATA';

select * from user_recyclebin;

--              TASK 5
flashback table bvd1_t1 to before drop;

--              TASK 6
BEGIN
  FOR k IN 4..10004
  LOOP
    insert into bvd1_t1 values(k, 'A');
  END LOOP;
END;
commit;

SELECT * FROM bvd1_t1 order by id;

--              TASK 7

select extent_id, blocks, bytes from DBA_EXTENTS where SEGMENT_NAME='BVD1_T1';

--              TASK 8

--here
--grant drop any tablespace to lab5; ������ ��� ���������� �� ����

DROP TABLESPACE bvd_qdata INCLUDING CONTENTS AND DATAFILES;


--              TASK 9
-- �� �������
--SELECT * FROM V$LOGFILE;

SELECT group#, sequence#, bytes, members, status, first_change# FROM V$LOG;

--              TASK 10
SELECT group#, sequence#, bytes, members, status, first_change# FROM V$LOG;

--              TASK 11
--switch to root pdb(on Vlad_dont work)
ALTER SYSTEM SWITCH LOGFILE; 10:18:20 10:40:04
SELECT * FROM V$LOG;

--              TASK 12

alter database add logfile group 4 'C:\Work\lab5\log\redo040.log' 
size 50m blocksize 512;
alter database add logfile member 'C:\Work\lab5\log\redo041.log'  to group 4;
alter database add logfile member 'C:\Work\lab5\log\redo042.log'  to group 4;
commit;

SELECT group#, sequence#, bytes, members, status, first_change# FROM V$LOG;

--              TASK 13

alter database clear logfile group 4;
alter database drop logfile group 4;
SELECT group#, sequence#, bytes, members, status, first_change# FROM V$LOG;
commit;

--              TASK 14

SELECT NAME, LOG_MODE FROM V$DATABASE;
SELECT INSTANCE_NAME, ARCHIVER, ACTIVE_STATE FROM V$INSTANCE;

--              TASK 15 
ALTER SYSTEM SWITCH LOGFILE;
SELECT NAME, FIRST_CHANGE#, NEXT_CHANGE# FROM V$ARCHIVED_LOG;

--              TASK 16
--sql plus
--connect sy as sysdba
--shutdown immediate;
--startup mount;
--alter database archivelog;
--archive log list;
--alter database open;

SELECT * FROM V$LOG;

--              TASK 17
ALTER SYSTEM SET LOG_ARCHIVE_DEST_1 ='LOCATION=C:\Work\lab5\archive'
ALTER SYSTEM SWITCH LOGFILE;
SELECT group#, sequence#, bytes, members, status, first_change# FROM V$LOG;
SELECT NAME, FIRST_CHANGE#, NEXT_CHANGE# FROM V$ARCHIVED_LOG;
--              TASK 18
--�� � ���*� � ��� �����
--shutdown immediate;
--startup mount;
--alter database noarchivelog;
--select name, log_mode from v$database;
--alter database open;

--              TASK 19

select name from v$controlfile;

--              TASK 20
show parameter control;

--              TASK 21
--ALTER DATABASE BACKUP CONTROLFILE TO TRACE;
--show parameter spfile ;
show parameter pfile;

--              TASK 22

CREATE PFILE='bvd_pfile.ora' FROM SPFILE;
--C:\Users\Vlad\Desktop\DB\WINDOWS.X64_193000_db_home\database

--              TASK 23
SELECT * FROM V$PWFILE_USERS;
show parameter remote_login_passwordfile;

--              TASK 24
SELECT * FROM V$DIAG_INFO;

--              TASK 25
--C:\Users\Vlad\Desktop\DB\diag\clients\user_VladDB\host_449034493_110\alert
--              TASK 26
--       chiiiil


