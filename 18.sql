--            TASK 1
create table Lab18(
id number(15) PRIMARY KEY,
text varchar2(20),
date_value date)
tablespace users;



grant all PRIVILEGES to bvd;

DROP TABLE Lab18;

SELECT * FROM Lab18;

spool 'C:\Users\Vlad\Desktop\All_Lab\export.txt';
select * from Lab18; 
spool off;

sqlldr bvd/orcl@//localhost:1521/bvd_pdb CONTROL=control.ctl
sqlldr c##lab15/orcl@//localhost:1521/orcl CONTROL=control.ctl