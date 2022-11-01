--1
-- C:\Users\Vlad\Desktop\DB\WINDOWS.X64_193000_db_home\network\admin

--2
--system -> orcl  -> select * from v$parameter;

--3
-- sqlplus ->system as sysdba -> orcl -> alter session set container=BVD_PDB; -> alter database open
-- then commands:
-- select * from user_tablespaces;
-- select name from v$datafile;
-- select * from dba_roles;
-- select * from dba_users;

--4
-- ���������\HKEY_LOCAL_MACHINE\SOFTWARE\Oracle

--5
--net manager
--sqlplus 
--connect BVD/orcl@NET_BVD_PDB

--7
--SELECT * FROM dba_users;

grant all privileges to BVD;


create Table test8user(
id int,
name varchar(50));

insert into test8user(id,name)
values(1,'Vlad');

select * from test8user;



--8

--help timing
	SET TIMING ON;
    
    select * from test8user;
    
    SET TIMING off;
    
    --9
    --DESCRIBE BVD_PDB.test8user.id;
    
    --10
    select segment_name from user_segments;
    
    --11
    alter database open;
    
    	CREATE view Vlad as select count(SEGMENT_NAME) as  "���-�� ���������",
       SUM(EXTENTS) as  "���-�� ���������",
       SUM(BLOCKS)  as  "���-�� ������", 
       SUM(BYTES)  as  "���-�� ����"
from DBA_SEGMENTS;

select * from Vlad;

    