--                TASK 1

select * from v$sga;
select sum(value) from v$sga;

--                TASK 2

select * from v$sga_dynamic_components where current_size>0;

--                TASK 3

select component, granule_size from v$sga_dynamic_components where current_size>0;

--                TASK 4

select current_size from v$sga_dynamic_free_memory;
select current_size from gv$sga_dynamic_free_memory;--почему автоисправленеи добавило g - не понятно

--                TASK 5

select component, current_size,min_size from v$sga_dynamic_components where component='DEFAULT buffer cache' or
                                                                            component='KEEP buffer cache' or 
                                                                            component='RECYCLE buffer cache';

--                TASK 6

create table lab5table(x int) storage(buffer_pool keep);
select segment_name,segment_type,tablespace_name,buffer_pool from user_segments where lower(segment_name)='lab5table';
--drop table lab5table;

--                TASK 7

create table lab5table2 (x int) cache storage(buffer_pool default);
select segment_name, segment_type, tablespace_name, buffer_pool from user_segments where lower(segment_name)='lab5table2';
drop table lab5table2;

--                TASK 8

show parameter log_buffer;

--                TASK 9

select * from (select pool, name, bytes from v$sgastat where pool = 'shared pool' order by bytes desc) where rownum <=10;

--                TASK 10

select pool, name, bytes from v$sgastat where pool='large pool' and name = 'free memory';

--                TASK 11

select * from v$session;

--                TASK 12

select username,server from v$session;


