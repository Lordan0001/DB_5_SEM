--            TASK 1
--sqlplus set container = bvd_pdb
--create user vlad9 identified by orcl
--container = current;

alter database open;

grant create session to vlad9;
grant create any table to vlad9;
grant create view to vlad9;
grant create any sequence to vlad9;
grant select any sequence to vlad9;
grant create cluster to vlad9;
grant create public synonym to vlad9;
grant create synonym to vlad9;
grant create materialized view to vlad9;
grant drop public synonym to vlad9;
grant drop any SEQUENCE to vlad9;
alter user vlad9 quota unlimited on users;
grant create any cluster to vlad9;

--            TASK 2

create sequence BVD.S1
    increment by 10
    start with 1000
    nomaxvalue
    nominvalue
    nocycle
    nocache
    noorder;
  
select BVD.S1.nextval from dual;   
select BVD.S1.currval from dual;

DROP sequence BVD.S1;

--            TASK 3

create sequence BVD.S2
    increment by 10
    start with 10
    maxvalue 100
    nocache
    nocycle;

select BVD.S2.nextval from dual;   
alter sequence S2 increment by 99;
select S2.currval from dual;

DROP sequence S2;

--            TASK 5
create sequence BVD.S3
    increment by -10
    start with 10
   maxvalue 20
    minvalue -100
    nocycle
    order;

select BVD.S3.nextval from dual;

alter sequence S3 increment by -90;
select S3.nextval from dual;  

alter sequence S3 increment by -10;  

DROP sequence S3;

--            TASK 6
create sequence BVD.S4
    increment by 1
    start with 1
    maxvalue 10
    cycle
    cache 5
    noorder;
    
select BVD.S4.nextval from dual;
select BVD.S4.currval from dual;
alter sequence s4 increment by 9;

DROP sequence BVD.S4;


--            TASK 7
select * from sys.all_sequences where sequence_owner='BVD';

--            TASK 8
select * from user_tablespaces;
create table T1 (
    N1 number(20),
    N2 number(20),
    N3 number(20),
    N4 number(20)
    ) tablespace USERS;
    
alter table T1 cache storage (buffer_pool keep);

BEGIN
      FOR i IN 1..7 LOOP
      insert into T1(N1,N2,N3,N4) values (BVD.S1.currval, BVD.S2.currval, BVD.S3.currval, BVD.S4.currval);
      END LOOP;
END;

drop table T1;
select * from T1;

--            TASK 9
create cluster BVD.ABC
(
    x number(10),
    v varchar2(12)
)
hashkeys 200 tablespace USERS;

--            TASK 10-12
create table A(XA number(10), VA varchar(12), CA char(10))  cluster BVD.ABC(XA,VA);
create table B(XB number(10), VB varchar(12), CB char(10)) cluster BVD.ABC(XB,VB);
create table C(XC number(10), VC varchar(12), CC char(10))  cluster BVD.ABC(XC,VC) ;

--            TASK 13 
--from Vlad_PDB
select cluster_name, owner from DBA_CLUSTERS;
select * from dba_tables where cluster_name='ABC';    

--            TASK 14-15
create synonym SINC for BVD.C;
create public synonym SINB for BVD.B;

select * from ALL_SYNONYMS where table_owner='BVD';

DROP SYNONYM SINC;
DROP PUBLIC SYNONYM SINB;
DROP TABLE A;
DROP TABLE B;
DROP TABLE C;


--            TAST 16
create table A (
    X number(20) primary key
);

create table B (
    Y number(20),
    constraint fk_column
    foreign key (Y) references A(X)
);

insert into A(X) values (1);
insert into A(X) values (2);
insert into B(Y) values (1);
insert into B(Y) values (2);
    
create view V1 as select X, Y from A inner join B on A.X=B.Y;
    
select * from V1;

DROP VIEW V1;

--            TAST 17
create materialized view MV
    build immediate
    refresh complete
    start with sysdate
    next sysdate + Interval '1' minute
    as
    select A.X, B.Y
    from (select count(*) X from A) a,
         (select count(*) Y from B) b
    
    select * from MV;
    insert into A(X) values (8);
    
drop materialized view MV;

