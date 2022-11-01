--                  TASK 1
--alter database open;
select name, description from v$bgprocess order by 1;

--                  TASK 2
SELECT * FROM v$process ; 

--                  TASK 3
show parameter db_writer_processes;

--                  TASK 4-5
select * from v$instance;

--                  TASK 6
select * from v$services; -- точки подкл

--                  TASK 7



select * from V$DISPATCHER;
show  parameter DISPATCHERS

--                  TASK 9
select username, server from v$session; -- текущ соед

--                  TASK 10
--C:\Users\Vlad\Desktop\DB\WINDOWS.X64_193000_db_home\NETWORK\ADMIN\listener.ora список подключений

--                  TASK 11
-- cmd -> lsnrctl -> help

--                  TASK 12
select TYPE,NAME,NETWORK_NAME,PDB from v$listener_network inner join V$SERVICES on v$listener_network.value = V$SERVICES.name ; -- службы интстанса
