--            TASK 1
CREATE DATABASE LINK ANOTHERDB 
   CONNECT TO lab14
   IDENTIFIED BY "lab14"
   USING 'BVD_PDB';
   
   SELECT name
FROM v$database;
  -- create user vlad14 IDENTIFIED by vlad14;
   --grant connect,RESOURCE to vlad14;
   --grant create DATABASE link to vlad14;
   --drop user vlad14;
   

ALTER SESSION CLOSE DATABASE LINK ANOTHERDB;
DROP DATABASE LINK ANOTHERDB;

--            TASK 2
CREATE TABLE lab14 (
id int,
someNumbers int,
secretWord varchar(50));

SELECT * FROM lab14@ANOTHERDB;
INSERT INTO lab14@ANOTHERDB values(21,'123','01.01.2002');
DELETE lab14@ANOTHERDB where id='21';

--            TASK 3
CREATE PUBLIC DATABASE LINK ANOTHERDB_PUBLIC 
   CONNECT TO lab14
   IDENTIFIED BY "lab14"
   USING 'orcl';

ALTER SESSION CLOSE DATABASE LINK ANOTHERDB_PUBLIC;
DROP PUBLIC DATABASE LINK ANOTHERDB_PUBLIC;


--            TASK 4

SELECT * FROM teacher@ANOTHERDB_PUBLIC;
INSERT INTO lab14@ANOTHERDB_PUBLIC values(21,'123','01.01.2002');
DELETE lab14@ANOTHERDB_PUBLIC where id='21';
