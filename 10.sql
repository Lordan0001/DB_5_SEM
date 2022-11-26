--		TASK	1
begin
  null;
end;

--		TASK	2
begin 
  dbms_output.put_line('Hello,World!');
end;

--		TASK	3
declare 
  x number(4) := 3;
  y number(3) := 0;
  z number (10,2);
begin
  z:=x/y;

  exception when others
    then dbms_output.put_line(sqlcode||': error =' || sqlerrm);
end;

--		TASK	4
declare
  x number(3) := 3;
begin
  begin
    declare x number(3) := 1;
    begin dbms_output.put_line('x = '|| x);end;
    end;
    dbms_output.put_line('x = '|| x);
end;

--		TASK	5
alter system set plsql_warnings='ENABLE:INFORMATIONAL';
select name, value from v$parameter where name ='plsql_warnings';

--		TASK	6
select keyword from v$reserved_words
  where length = 1 and keyword != 'A';
  


  
--		TASK	7
select keyword from v$reserved_words
  where length > 1 and keyword!='A';
  
--		TASK	8
select name,value from v$parameter
  where name like 'plsql%';
show parameters;

--		TASK	9 - 17
declare
  n1 number(3):= 25;
  n2 number(3):= 10;
  div number(10,2);
  fix number(10,2):=3.14;
  neg number(4,-5):= 32.12345;
  en number(32,10):= 12345E-10;
  bf binary_float:=123456789.123456789;
  bd binary_double:=123456789.123456789;
  b1 boolean:= true;
begin
  div:=mod(n1,n2);
  dbms_output.put_line('n1 ='|| n1);
  dbms_output.put_line('n2 ='|| n2);
  dbms_output.put_line('n1%n2 ='|| div);
  dbms_output.put_line('fix ='|| fix);
  dbms_output.put_line('neg ='|| neg);
  dbms_output.put_line('en ='|| en);
  dbms_output.put_line('bf ='|| bf);
  dbms_output.put_line('bd ='|| bd);
  if b1 then dbms_output.put_line('b1 ='||'true');end if;
end;
--		TASK	18
declare 
  n3 constant number(5):=5;
  vc constant varchar(25):='Hello, World!';
  c constant char(7):= 'Alex';
begin
    dbms_output.put_line('vc = ' || vc);
    dbms_output.put_line('n1 = ' || n3);
    dbms_output.put_line('c = ' || c);
    n3:= 10;
    exception when others
      then dbms_output.put_line('error =' || n3);
end;

--		TASK	19 - 20
declare
  name varchar(25):= 'One';
  surname name%type:= 'Two';
  x dual%ROWTYPE;
begin
  select 'T' into x from dual;
  dbms_output.put_line('name ='|| name);
  dbms_output.put_line(x.dummy);
end;

--		TASK	21
declare
  x pls_integer:= 17;
begin
  if x>8 then dbms_output.put_line(x||'>8');
  elsif x=8 then   dbms_output.put_line(x|| '=8');
  else   dbms_output.put_line(x || '<8');
  end if;
end;

--		TASK	22
declare 
  x pls_integer := 19;
begin
  case 
    when x<18 then   dbms_output.put_line(x || '<18');
    when x between 13 and 20 then   dbms_output.put_line(x || ' is between 13 and 20');
    else dbms_output.put_line('else');
  end case;
end;
--		TASK	23-24
declare
  x pls_integer :=0;
  begin
    loop x:=x+1;
       dbms_output.put(x);
       exit when x>5;
    end loop;
    dbms_output.put_line(' ');
    for k in 1..5
      loop dbms_output.put_line(k); end loop;
    while (x>0)
      loop x:=x-1;
      dbms_output.put_line(x);
      end loop;
end;
