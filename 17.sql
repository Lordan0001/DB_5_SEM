ALTER SESSION SET nls_date_format='dd-mm-yyyy hh24:mi:ss';
FLASHBACK TABLE teacher TO BEFORE drop;

--in pdb
insert into  TEACHER    (TEACHER,   TEACHER_NAME, PULPIT, PULPIT_NAME,BIRTHDAY,SALARY)
values  ('СМЛВ',    'Смелов Владимир Владиславович',  'ИСиТ', 'Иформационный систем и технологий ','02-01-1990',1000);
insert into  TEACHER    (TEACHER,   TEACHER_NAME, PULPIT, PULPIT_NAME,BIRTHDAY,SALARY)
values  ('АКНВЧ',    'Акунович Станислав Иванович',  'ИСиТ', 'Иформационный систем и технологий ','04.07.1961',600);
insert into  TEACHER    (TEACHER,   TEACHER_NAME, PULPIT, PULPIT_NAME,BIRTHDAY,SALARY)
values  ('КЛСНВ',    'Колесников Леонид Валерьевич', 'ИСиТ','Иформационный систем и технологий ','05.08.1955',500);
insert into  TEACHER    (TEACHER,   TEACHER_NAME, PULPIT, PULPIT_NAME,BIRTHDAY,SALARY)
values  ('ГРМН',    'Герман Олег Витольдович', 'ИСиТ','Иформационный систем и технологий ','06.05.1961',550);
insert into  TEACHER    (TEACHER,   TEACHER_NAME, PULPIT, PULPIT_NAME,BIRTHDAY,SALARY)
values  ('ЛЩНК',    'Лащенко Анатолий Пвалович',  'ИСиТ','Иформационный систем и технологий ','01.08.1963',620);
insert into  TEACHER    (TEACHER,   TEACHER_NAME, PULPIT, PULPIT_NAME,BIRTHDAY,SALARY)
values  ('БРКВЧ',    'Бракович Андрей Игорьевич',  'ИСиТ','Иформационный систем и технологий ','03.03.1971',480);
insert into  TEACHER    (TEACHER,   TEACHER_NAME, PULPIT, PULPIT_NAME,BIRTHDAY,SALARY)
values  ('ДДК',     'Дедко Александр Аркадьевич',  'ИСиТ','Иформационный систем и технологий ','11.09.1965',490);
insert into  TEACHER    (TEACHER,   TEACHER_NAME, PULPIT, PULPIT_NAME,BIRTHDAY,SALARY)
values  ('КБЛ',     'Кабайло Александр Серафимович',  'ИСиТ','Иформационный систем и технологий ','13.02.1960',530);
insert into  TEACHER    (TEACHER,   TEACHER_NAME, PULPIT, PULPIT_NAME,BIRTHDAY,SALARY)
values  ('УРБ',     'Урбанович Павел Павлович',  'ИСиТ','Иформационный систем и технологий ','21.04.1964',710);
insert into  TEACHER    (TEACHER,   TEACHER_NAME, PULPIT, PULPIT_NAME,BIRTHDAY,SALARY)
values  ('РМНК',     'Романенко Дмитрий Михайлович',  'ИСиТ','Иформационный систем и технологий ','17.07.1973',670);
insert into  TEACHER    (TEACHER,   TEACHER_NAME, PULPIT, PULPIT_NAME,BIRTHDAY,SALARY)
values  ('ПСТВЛВ',  'Пустовалова Наталия Николаевна', 'ИСиТ' ,'Иформационный систем и технологий ','13.10.1968',460);
insert into  TEACHER    (TEACHER,   TEACHER_NAME, PULPIT, PULPIT_NAME,BIRTHDAY,SALARY)
 values  ('ГРН',     'Гурин Николай Иванович',  'ИСиТ','Иформационный систем и технологий ','23.11.1963',580);
insert into  TEACHER    (TEACHER,   TEACHER_NAME, PULPIT, PULPIT_NAME,BIRTHDAY,SALARY)
values  ('ЖЛК',     'Жиляк Надежда Александровна',  'ИСиТ','Иформационный систем и технологий ','12.01.1980',490);
insert into  TEACHER    (TEACHER,   TEACHER_NAME, PULPIT, PULPIT_NAME,BIRTHDAY,SALARY)
values  ('БРТШВЧ',   'Барташевич Святослав Александрович',  'ПОиСОИ', 'Полиграфического обработки информации ','09.04.1972',390);
insert into  TEACHER    (TEACHER,   TEACHER_NAME, PULPIT, PULPIT_NAME,BIRTHDAY,SALARY)
values  ('ЮДНКВ',   'Юденков Виктор Степанович',  'ПОиСОИ', 'Полиграфического обработки информации ','17.02.1974',380);
insert into  TEACHER    (TEACHER,   TEACHER_NAME, PULPIT, PULPIT_NAME,BIRTHDAY,SALARY)
values  ('БРНВСК',   'Барановский Станислав Иванович',  'ЭТиМ', 'Экономической теории и маркетинга','21.01.1982',440);
insert into  TEACHER    (TEACHER,  TEACHER_NAME, PULPIT, BIRTHDAY,SALARY)
values  ('НВРВ',   'Неверов Александр Васильевич',  'МиЭП', 'Менеджмента и экономики природопользования', '26.10.1975',430);
insert into  TEACHER    (TEACHER,   TEACHER_NAME, PULPIT, PULPIT_NAME,BIRTHDAY,SALARY)
values  ('РВКЧ',   'Ровкач Андрей Иванович',  'ОВ',  'Охотоведения','19.02.1973',395);
insert into  TEACHER    (TEACHER,   TEACHER_NAME, PULPIT, PULPIT_NAME,BIRTHDAY,SALARY)
values  ('ДМДК', 'Демидко Марина Николаевна',  'ЛПиСПС','Ландшафтного проектирования и садово-паркового строительства','26.12.1978',320);
insert into  TEACHER    (TEACHER,   TEACHER_NAME, PULPIT, PULPIT_NAME,BIRTHDAY,SALARY)
values  ('МШКВСК',   'Машковский Владимир Петрович',  'ЛУ', 'Лесоустройства','23.10.1974',750);
insert into  TEACHER    (TEACHER,   TEACHER_NAME, PULPIT, PULPIT_NAME,BIRTHDAY,SALARY)
values  ('ЛБХ',   'Лабоха Константин Валентинович',  'ЛВ', 'Лесоводства','28.03.1968',630);
insert into  TEACHER    (TEACHER,   TEACHER_NAME, PULPIT, PULPIT_NAME,BIRTHDAY,SALARY)
values  ('ЗВГЦВ',   'Звягинцев Вячеслав Борисович',  'ЛЗиДВ','Лесозащиты и древесиноведения','26.11.1974',410); 
insert into  TEACHER    (TEACHER,   TEACHER_NAME, PULPIT, PULPIT_NAME,BIRTHDAY,SALARY)
values  ('БЗБРДВ',   'Безбородов Владимир Степанович',  'ОХ','Органической химии','05.05.1972',610); 
insert into  TEACHER    (TEACHER,   TEACHER_NAME, PULPIT, PULPIT_NAME,BIRTHDAY,SALARY)
values  ('ПРКПЧК',   'Прокопчук Николай Романович',  'ТНХСиППМ','Технологии нефтехимического синтеза и переработки полимерных материалов','07.08.1968',630); 
insert into  TEACHER    (TEACHER,   TEACHER_NAME, PULPIT, PULPIT_NAME,BIRTHDAY,SALARY)
values  ('НСКВЦ',   'Насковец Михаил Трофимович',  'ТЛ','Транспорта леса','12.08.1969',465); 
insert into  TEACHER    (TEACHER,   TEACHER_NAME, PULPIT, PULPIT_NAME,BIRTHDAY,SALARY)
values  ('МХВ',   'Мохов Сергей Петрович',  'ЛМиЛЗ','Лесных машин и технологии лесозаготовок','18.10.1973',345); 
insert into  TEACHER    (TEACHER,   TEACHER_NAME, PULPIT, PULPIT_NAME,BIRTHDAY,SALARY)
values  ('ЕЩНК',   'Ещенко Людмила Семеновна',  'ТНВиОХТ','Технологии неорганических веществ и общей химической технологии ','28.07.1972',415); 
insert into  TEACHER    (TEACHER,   TEACHER_NAME, PULPIT, PULPIT_NAME,BIRTHDAY,SALARY)
values  ('ЖРСК',   'Жарский Иван Михайлович',  'ХТЭПиМЭЕ','Химии, технологии электрохимических производств и материалов электронной техники','13.04.1955',860); 

select * from TEACHER;

--                TASK 1
 create table teacher_backup (
  teacher      char(10),
  teacher_name nvarchar2(50),
  pulpit       char(10),
  salary      number
);

create table teacher_backup2 (
  teacher      char(10),
  teacher_name nvarchar2(50),
  pulpit       char(10),
  salary      number
);

drop table teacher_backup;
drop table teacher_backup2;
drop table job_status;

create table job_status (
  status   nvarchar2(50),
  datetime timestamp default current_timestamp
);

create or replace procedure jobprocedure is
  cursor teachercursor is select * from teacher where salary > 450;
  begin
    for n in teachercursor
      loop
        insert into teacher_backup (teacher, teacher_name, pulpit, salary)
        values (n.teacher, n.teacher_name, n.pulpit, n.salary); 
      end loop;
    delete from teacher where salary > 450;
    insert into job_status (status) values ('SUCCESS');
    commit;
    exception
    when others then insert into job_status (status) values ('FAIL');
   raise_application_error (-20002,'An error has occurred inserting job.');
end;

begin
  jobprocedure();
end;

select * from teacher_backup;
select * from teacher;
select * from job_status;

--создать задание (задание выполняется в опред.время (через неделю))
declare v_job number;
begin
  SYS.dbms_job.submit(
      job => v_job,
      what => 'BEGIN jobprocedure(); END;',
      next_date => trunc(sysdate+7) + 3 / 24,
      interval => 'trunc(sysdate + 7) + 60/86400');
  commit;
end;

select job, what, last_date, last_sec, next_date, next_sec, broken from user_jobs;

--запустить немедленно
begin
  dbms_job.run(21);
end;
select job, what, last_date, last_sec, next_date, next_sec, broken from user_jobs;

--разрешение задания
begin
  dbms_job.broken(21, broken => true);
end;
select job, what, last_date, last_sec, next_date, next_sec, broken from user_jobs;

--удалить задание из очереди
begin
  dbms_job.remove(21);
end;
select job, what, last_date, last_sec, next_date, next_sec, broken from user_jobs;

--создать задание с номером
begin
  dbms_job.isubmit(2, 'BEGIN jobprocedure(); END;', sysdate, 'sysdate + 60/86400');
  commit;
end;
select job, what, last_date, last_sec, next_date, next_sec, broken from user_jobs;

--
begin
  dbms_job.remove(2);
end;
--

-- бэкап во вторую таблицу
create or replace procedure jobprocedure2 is
  cursor teachercursor2 is select * from teacher where salary < 450;
  begin
    for n in teachercursor2
      loop
        insert into teacher_backup2 (teacher, teacher_name, pulpit, salary)
        values (n.teacher, n.teacher_name, n.pulpit, n.salary); 
      end loop;
    delete from teacher where salary < 450;
    insert into job_status (status) values ('SUCCESS');
    commit;
    exception when others then insert into job_status (status) values ('FAIL');
end;

begin
  jobprocedure2();
end;

select * from teacher_backup2;
select * from teacher;
select * from job_status;

--                TASK 6

begin
  dbms_scheduler.create_job(
      job_name => 'jsh_2',
      job_type => 'STORED_PROCEDURE',
      job_action => 'procedure',
      start_date => sysdate,
      repeat_interval => 'FREQ=DAILY; INTERVAL=7;BYHOUR=10; BYMINUTE=10;BYSECOND=30',
      enabled => true
  );
end;

select job_name, job_type, job_action, start_date, repeat_interval, next_run_date, enabled from user_scheduler_jobs;
select job_name, state from  user_scheduler_jobs;

begin
  dbms_scheduler.set_attribute('jsh_2', attribute => 'job_action', value => 'jobprocedure');
end;

begin
  dbms_scheduler.drop_job('jsh_2', true);
end;

begin
  dbms_scheduler.create_schedule(
      schedule_name => 'Sch_2',
      start_date => sysdate,
      repeat_interval => 'FREQ=DAILY;',
      comments => 'Sch_2 DAILY at 12:00'
  );
end;
select * from user_scheduler_schedules;

begin
  dbms_scheduler.create_program(
      program_name => 'Pr_2',
      program_type => 'STORED_PROCEDURE',
      program_action => 'up_job',
      number_of_arguments => 0,
      enabled => false,
      comments => 'Sch_2 DAILY at 12:00'
  );
end;
select * from user_scheduler_programs;