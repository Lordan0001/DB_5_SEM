--            TASK 1
alter database open;

create table Roles
(
id number, 
role varchar2(100) not null unique,
constraint role_pk primary key(id)
);
drop table Roles;

create user c##lab15 identified by prcl;
grant create session to  c##lab15;
GRANT ALL PRIVILEGES TO c##lab15;
--all in cdb

--select * from FACULTY;

--            TASK 2
declare
  x number(10):= 0;
  string varchar(20);
begin
  while(x<10)
    loop
      x:= x+1;
      string:= concat('Name',to_char(x));
      insert into Roles(id,role) values(x,string);
    end loop;
  commit;
end;
select * from Roles;

--            TASK 3-4
--select * from user_sys_privs;

--grant create any trigger to bvd; didnt work switch to cdb

create or replace trigger beforeInsertTrigger
before insert on Roles
begin
  dbms_output.put_line('Before insert');
end;

create or replace trigger beforeDeleteTrigger
before delete on Roles
begin 
  dbms_output.put_line('Before delete'); 
end;

create or replace trigger beforeUpdateTrigger
before update on Roles
begin 
  dbms_output.put_line('Before update'); 
end;

insert into Roles (id, role) values(20, 'insert');
update Roles set role = 'update' where id = 20;
delete from Roles where id = 20;

select * from Roles;

--            TASK 5
create or replace trigger beforeInsertRowTrigger
before insert on Roles for each row
begin 
  dbms_output.put_line('Before insert row'); 
end;

create or replace trigger beforeDeleteRowTrigger
before delete on Roles for each row
begin 
  dbms_output.put_line('Before delete row'); 
end;

create or replace trigger beforeUpdateRowTrigger
before update on Roles for each row
begin 
  dbms_output.put_line('Before update row'); 
end;

--            TASK 6
create or replace trigger predicates
after insert or update or delete on Roles
begin 
    if INSERTING then
        dbms_output.put_line('Inserting after');
    elsif UPDATING then
        dbms_output.put_line('Updating after');
    elsif DELETING then
        dbms_output.put_line('Deleting after');
    end if;
end; 

--            TASK 7
create or replace trigger afterInsertTrigger
after insert on Roles
begin 
  dbms_output.put_line('After insert'); 
end;

create or replace trigger afterDeleteTrigger
after delete on Roles
begin 
  dbms_output.put_line('After delete'); 
end;

create or replace trigger afterUpdateTrigger
after update on Roles
begin 
  dbms_output.put_line('After update'); 
end;
    
--            TASK 8
create or replace trigger afterInsertRowTrigger
after insert on Roles for each row
begin 
  dbms_output.put_line('After insert row'); 
end;

create or replace trigger afterDeleteRowTrigger
after delete on Roles for each row
begin 
  dbms_output.put_line('After delete row'); 
end;

create or replace trigger afterUpdateRowTrigger
after update on Roles for each row
begin 
  dbms_output.put_line('After update row'); 
end;
    
--            TASK 9
create table AUDITS
(
OperationDate date,
OperationType varchar2(40), 
TriggerName varchar2(40),
Data varchar2(40) 
);
--            TASK 10        
create or replace trigger beforeTriggersAudit
before insert or update or delete on Roles
begin
   if inserting then
        dbms_output.put_line('before insert AUDITS');
        insert into AUDITS(OperationDate, OperationType, TriggerName, Data)
        select sysdate,'Insert', 'before insert AUDITS',concat(id, role)
        from Roles;
   elsif updating then
        dbms_output.put_line('before update AUDITS');
        insert into AUDITS(OperationDate, OperationType, TriggerName, Data)
        select sysdate,'Update', 'before update AUDITS',concat(id, role)
        from Roles;
  elsif deleting then
        dbms_output.put_line('before delete AUDITS');
        insert into AUDITS(OperationDate, OperationType, TriggerName, Data)
        select sysdate,'Delete', 'before delete AUDITS',concat(id, role)
        from Roles;
  end if;
end;

create or replace trigger afterTriggersAudit
after insert or update or delete on Roles
begin
   if inserting then
        dbms_output.put_line('after insert AUDITS');
        insert into AUDITS(OperationDate, OperationType, TriggerName, Data)
        select sysdate,'Insert', 'after insert AUDITS',concat(id, role)
        from Roles;
   elsif updating then
        dbms_output.put_line('after update AUDITS');
        insert into AUDITS(OperationDate, OperationType, TriggerName, Data)
        select sysdate,'Update', 'after update AUDITS',concat(id, role)
        from Roles;
  elsif deleting then
        dbms_output.put_line('after delete AUDITS');
        insert into AUDITS(OperationDate, OperationType, TriggerName, Data)
        select sysdate,'Delete', 'after delete AUDITS',concat(id, role)
        from Roles;
  end if;
end;

------------------------------------------------
SELECT * from Roles;
SELECT * from Audits;
select object_name, status from user_objects where object_type='TRIGGER';
--            TASK 11
insert into Roles (id, role) values(2, 'error');
select * from AUDITS;

--            TASK 12
drop table Roles;
select * from Roles;

ALTER SESSION SET recyclebin=ON;
--SELECT * FROM DBA_RECYCLEBIN;
FLASHBACK table Roles TO BEFORE DROP;

create or replace trigger noDropTable
before drop on schema
begin
   if DICTIONARY_OBJ_NAME = 'ROLES' then
        RAISE_APPLICATION_ERROR (-20000, 'Do not drop table '||ORA_DICT_OBJ_TYPE||' '||ORA_DICT_OBJ_NAME);
   end if;
end; 

--            TASK 13
drop table audits;
FLASHBACK table audits TO BEFORE DROP;
--            TASK 14

create view rolesview as SELECT * FROM roles;
    
CREATE OR REPLACE TRIGGER role_trigg
instead of insert on rolesview
    BEGIN
        if inserting then
            dbms_output.put_line('insert');
            insert into roles VALUES (102, 'bye');
        end if;
END role_trigg;
      
INSERT INTO rolesview (id,role) values(12,'c');
SELECT * FROM rolesview;

--            TASK 15
select * from audits;

