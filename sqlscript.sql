REM   Script: Session 03
REM   sesion 3

select e.name employee, 
          (select name  
           from departments d  
           where d.deptno = e.deptno) department, 
           e.job 
from employees e 
order by e.name;

create table DEPARTMENTS ( 
    deptno	number, 
    name	varchar2(50) not null, 
    location	varchar2(50), 
    constraint pk_departments primary key (deptno) 
);

create table DEPARTMENTS ( 
    deptno	number, 
    name	varchar2(50) not null, 
    location	varchar2(50), 
    constraint pk_departments primary key (deptno) 
);

create table EMPLOYEES ( 
    empno 	number, 
    name	varchar2(50) not null, 
    job		varchar2(50), 
    manager number, 
    hiredate date, 
    salary	number(7,2), 
    commission number(7, 2), 
    deptno number;

    constraint pk_employees primary key (empno), 


    constraint fk_employees,deptno fereign key (deptno) 


        references DEPARTMENTS (deptno) 


);


create table DEPARTMENTS ( 
    deptno	number, 
    name	varchar2(50) not null, 
    location	varchar2(50), 
    constraint pk_departments primary key (deptno) 
);

create table EMPLOYEES ( 
    empno 	number, 
    name	varchar2(50) not null, 
    job		varchar2(50), 
    manager number, 
    hiredate date, 
    salary	number(7,2), 
    commission number(7, 2), 
    deptno number;

    constraint pk_employees primary key (empno), 


    constraint fk_employees,deptno fereign key (deptno) 


        references DEPARTMENTS (deptno) 


create table EMPLOYEES ( 
    empno 	number, 
    name	varchar2(50) not null, 
    job		varchar2(50), 
    manager number, 
    hiredate date, 
    salary	number(7,2), 
    commission number(7, 2), 
    deptno number;

    constraint pk_employees primary key (empno), 


    constraint fk_employees,deptno fereign key (deptno) 


        references DEPARTMENTS (deptno) 


);


create table EMPLOYEES ( 
    empno 	number, 
    name	varchar2(50) not null, 
    job		varchar2(50), 
    manager number, 
    hiredate date, 
    salary	number(7,2), 
    commission number(7, 2), 
    deptno number;

    constraint pk_employees primary key (empno), 


    constraint fk_employees deptno fereign key (deptno) 


        references DEPARTMENTS (deptno) 


);


create table DEPARTMENTS ( 
    deptno	number, 
    name	varchar2(50) not null, 
    location	varchar2(50), 
    constraint pk_departments primary key (deptno) 
);

create table EMPLOYEES ( 
    empno 	number, 
    name	varchar2(50) not null, 
    job		varchar2(50), 
    manager number, 
    hiredate date, 
    salary	number(7,2), 
    commission number(7, 2), 
    deptno number;

    constraint pk_employees primary key (empno), 


    constraint fk_employees deptno fereign key (deptno) 


        references DEPARTMENTS (deptno) 


);


create table DEPARTMENTS ( 
    deptno	number, 
    name	varchar2(50) not null, 
    location	varchar2(50), 
    constraint pk_departments primary key (deptno) 
);

create table EMPLOYEES ( 
    empno 	number, 
    name	varchar2(50) not null, 
    job		varchar2(50), 
    manager number, 
    hiredate date, 
    salary	number(7,2), 
    commission number(7, 2), 
    deptno number;

    constraint pk_employees primary key (empno), 


    constraint fk_employees deptno fereign key (deptno) 


        references DEPARTMENTS (deptno) 


);


create table EMPLOYEES ( 
    empno 	number, 
    name	varchar2(50) not null, 
    job		varchar2(50), 
    manager number, 
    hiredate date, 
    salary	number(7,2), 
    commission number(7, 2), 
    deptno number, 
    constraint pk_employees primary key (empno), 
    constraint fk_employees_deptno foreign key (deptno) 
        references DEPARTMENTS (deptno) 
);

create or replace trigger  DEPARTMENTS_BIUo 
    before insert or update on DEPARTMENTS 
    for each row 
begin 
    if inserting and :new.deptno is null then 
        :new.deptno := to_number(sys_guid(),  
          'XXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXX'); 
    end if; 
end; 
/

create or replace trigger EMPLOYEES_BIU 
    before insert or update on EMPLOYEES 
    for each row 
begin 
    if inserting and :new.empno is null then 
        :new.empno := to_number(sys_guid(),  
            'XXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXX'); 
    end if; 
end; 
/

create table DEPARTMENTS ( 
    deptno	number, 
    name	varchar2(50) not null, 
    location	varchar2(50), 
    constraint pk_departments primary key (deptno) 
);

create or replace trigger  DEPARTMENTS_BIUo 
    before insert or update on DEPARTMENTS 
    for each row 
begin 
    if inserting and :new.deptno is null then 
        :new.deptno := to_number(sys_guid(),  
          'XXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXX'); 
    end if; 
end; 
/

create or replace trigger EMPLOYEES_BIU 
    before insert or update on EMPLOYEES 
    for each row 
begin 
    if inserting and :new.empno is null then 
        :new.empno := to_number(sys_guid(),  
            'XXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXX'); 
    end if; 
end; 
/

insert into departments (name, location) values 
   ('Finance','New York');

insert into departments (name, location) values 
   ('Development','San Jose');

insert into departments (name, location) values 
   ('Finance','New York');

insert into departments (name, location) values 
   ('Development','San Jose');

insert into departments (name, location) values 
   ('Finance','New York');

insert into departments (name, location) values 
   ('Development','San Jose');

select * from departments;

insert into EMPLOYEES  
   (name, job, salary, deptno)  
   values 
   ('Sam Smith','Programmer',  
    5000,  
  (select deptno  
  from departments  
  where name = 'Development'));

insert into EMPLOYEES  
   (name, job, salary, deptno)  
   values 
   ('Mara Martin','Analyst',  
   6000,  
   (select deptno  
   from departments  
   where name = 'Finance'));

insert into EMPLOYEES  
   (name, job, salary, deptno)  
   values 
   ('Yun Yates','Analyst',  
   5500,  
   (select deptno  
   from departments  
   where name = 'Development'));

select * from departments;

delete from DEPTNO where NAME = Finance;

delete from DEPARTMENTS where NAME = Finance;

delete from DEPARTMENTS where NAME = 'Finance';

select * from departments;

select * from departments;

select * from departments;

create table DEPARTMENTS ( 
    deptno	number, 
    name	varchar2(50) not null, 
    location	varchar2(50), 
    constraint pk_departments primary key (deptno) 
);

create table EMPLOYEES ( 
    empno 	number, 
    name	varchar2(50) not null, 
    job		varchar2(50), 
    manager number, 
    hiredate date, 
    salary	number(7,2), 
    commission number(7, 2), 
    deptno number, 
    constraint pk_employees primary key (empno), 
    constraint fk_employees_deptno foreign key (deptno) 
        references DEPARTMENTS (deptno) 
);

create or replace trigger  DEPARTMENTS_BIUo 
    before insert or update on DEPARTMENTS 
    for each row 
begin 
    if inserting and :new.deptno is null then 
        :new.deptno := to_number(sys_guid(),  
          'XXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXX'); 
    end if; 
end; 
/

create or replace trigger EMPLOYEES_BIU 
    before insert or update on EMPLOYEES 
    for each row 
begin 
    if inserting and :new.empno is null then 
        :new.empno := to_number(sys_guid(),  
            'XXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXX'); 
    end if; 
end; 
/

insert into departments (name, location) values 
   ('Finance','New York');

insert into departments (name, location) values 
   ('Development','San Jose');

select * from departments;

delete from departments where NAME = 'Development';

delete from departments where NAME = 'Development';

delete from departments where NAME = 'Development';

delete from departments where NAME = 'Development';

insert into departments (name, location) values 
   ('Finance','New York');

insert into departments (name, location) values 
   ('Development','San Jose');

select * from departments;

create table DEPARTMENTS ( 
    deptno	number, 
    name	varchar2(50) not null, 
    location	varchar2(50), 
    constraint pk_departments primary key (deptno) 
);

create table EMPLOYEES ( 
    empno 	number, 
    name	varchar2(50) not null, 
    job		varchar2(50), 
    manager number, 
    hiredate date, 
    salary	number(7,2), 
    commission number(7, 2), 
    deptno number, 
    constraint pk_employees primary key (empno), 
    constraint fk_employees_deptno foreign key (deptno) 
        references DEPARTMENTS (deptno) 
);

create or replace trigger  DEPARTMENTS_BIUo 
    before insert or update on DEPARTMENTS 
    for each row 
begin 
    if inserting and :new.deptno is null then 
        :new.deptno := to_number(sys_guid(),  
          'XXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXX'); 
    end if; 
end; 
/

create or replace trigger EMPLOYEES_BIU 
    before insert or update on EMPLOYEES 
    for each row 
begin 
    if inserting and :new.empno is null then 
        :new.empno := to_number(sys_guid(),  
            'XXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXX'); 
    end if; 
end; 
/

insert into departments (name, location) values 
   ('Finance','New York');

insert into departments (name, location) values 
   ('Development','San Jose');

select * from departments;

delete from departments where NAME = 'Finance';

delete from departments where NAME = 'Finance';

select * from departments;

delete from departments where NAME = 'Development';

select * from departments;

insert into departments (name, location) values 
   ('Development','San Jose');

insert into departments (name, location) values 
   ('Finance','New York');

select * from departments;

insert into EMPLOYEES  
   (name, job, salary, deptno)  
   values 
   ('Sam Smith','Programmer',  
    5000,  
  (select deptno  
  from departments  
  where name = 'Development'));

insert into EMPLOYEES  
   (name, job, salary, deptno)  
   values 
   ('Mara Martin','Analyst',  
   6000,  
   (select deptno  
   from departments  
   where name = 'Finance'));

insert into EMPLOYEES  
   (name, job, salary, deptno)  
   values 
   ('Yun Yates','Analyst',  
   5500,  
   (select deptno  
   from departments  
   where name = 'Development'));

select * from employees;

select table_name "Table",  
       index_name "Index",  
       column_name "Column",  
       column_position "Position" 
from  user_ind_columns  
where table_name = 'EMPLOYEES' or  
      table_name = 'DEPARTMENTS' 
order by table_name, column_name, column_position;

create index employee_dept_no_fk_idx  
on employees (deptno);

create unique index employee_ename_idx 
on employees (name);

select * from employees;

select e.name employee, 
           d.name department, 
           e.job, 
           d.location 
from departments d, employees e 
where d.deptno = e.deptno(+) 
order by e.name;

select e.name employee, 
          (select name  
           from departments d  
           where d.deptno = e.deptno) department, 
           e.job 
from employees e 
order by e.name;

select e.name lachiSTOSA, 
          (select name  
           from departments d  
           where d.deptno = e.deptno) department, 
           e.job 
from employees e 
order by e.name;

select e.name lachiSTOSA, 
          (select name  
           from departments d  
           where d.deptno = e.deptno) department, 
           e.job 
from employees e 
order by e.name;

select e.name employee, 
          (select name  
           from departments d  
           where d.deptno = e.deptno) department, 
           e.job chamba 
from employees e 
order by e.name;

select e.name employee, 
          (select name  
           from departments d  
           where d.deptno = e.deptno) department, 
           e.job chamba 
from employees e 
order by e.deptno;

select e.name employee, 
          (select name  
           from departments d  
           where d.deptno = e.deptno) department, 
           e.job chamba 
from employees e 
order by e.job;

select * from employees;

select * from departments;

select table_name "Table",  
       index_name "Index",  
       column_name "Column",  
       column_position "Position" 
from  user_ind_columns  
where table_name = 'EMPLOYEES' or  
      table_name = 'DEPARTMENTS' 
order by table_name, column_name, column_position;

select table_name "Table",  
       index_name "Index",  
       column_name "Column",  
       column_position "Position" 
from  user_ind_columns  
where table_name = 'EMPLOYEES' or  
      table_name = 'DEPARTMENTS' 
order by table_name, column_name, column_position;

alter table EMPLOYEES 
add country_code varchar2(2);

select * from employees;

select table_name, tablespace_name, status 
from user_tables 
where table_Name = 'EMPLOYEES';

select column_id, column_name , data_type 
from user_tab_columns 
where table_Name = 'EMPLOYEES' 
order by column_id;

update employees 
set country_code = 'US';

select * from employees;

update employees 
set country_code = 'AC' 
where lower(job) = 'programmer';

select * from employees;

where lower(job) = 'analyst'; 


update employees 
set country_code = 'WA' 
where lower(job) = 'analyst';

select * from employees;

update employees 
set comission = 2000 
where name = 'Sam Smith';

update employees 
set commission = 2000 
where name = 'Sam Smith';

select * 
from employees 
order by name;

select name nombre, countr_code codigo, salary salario, commission dineritoExtra 
from employees 
order by name;

select name nombre, country_code codigo, salary salario, commission dineritoExtra 
from employees 
order by name;

select name nombre, country_code codigo, salary salario, commission dineritoExtra 
from employees 
order by salario;

select name nombre, country_code codigo, salary salario, commission dineritoExtra 
from employees 
order by desc(salario);

select name nombre, country_code codigo, salary salario, commission dineritoExtra 
from employees 
order by -salario;

select e.name employee, 
          (select name  
           from departments d  
           where d.deptno = e.deptno) department, 
           e.job chamba 
from employees e 
order by e.job;

select * from employees;

alter table EMPLOYEES 
add country_code varchar2(2);

select table_name, tablespace_name, status 
from user_tables 
where table_Name = 'EMPLOYEES';

select column_id, column_name , data_type 
from user_tab_columns 
where table_Name = 'EMPLOYEES' 
order by column_id;

update employees 
set country_code = 'WA' 
where lower(job) = 'analyst';

select * from employees;

update employees 
set commission = 2000 
where name = 'Sam Smith';

select name nombre, country_code codigo, salary salario, commission dineritoExtra 
from employees 
order by salario;

select name nombre, country_code codigo, salary salario, commission dineritoExtra 
from employees 
order by salario;

select name nombre, country_code codigo, salary salario, commission dineritoExtra 
from employees 
order by salario;

select name nombre, country_code codigo, salary salario, commission dineritoExtra 
from employees 
order by salario;

select name nombre, country_code codigo, salary salario, commission dineritoExtra 
from employees 
order by salario;

select name nombre, country_code codigo, salary salario, commission dineritoExtra 
from employees 
order by desc salario;

select name nombre, country_code codigo, salary salario, commission dineritoExtra 
from employees 
order by -salario;

select name nombre, country_code codigo, salary salario, commission dineritoExtra 
from employees 
order by salario desc;

select 
	count(where country_code = 'WA') employee_count_WA, 
from employees;

select 
	count(* where country_code = 'WA') employee_count_WA, 
from employees;

select 
	count(select * where country_code = 'WA') employee_count_WA, 
from employees;

select 
	count(select * from employees where country_code = 'WA') employee_count_WA, 
from employees;

select 
	count(select * from employees where country_code = 'WA') employee_count_WA, 
from employees;

select 
	count(*) employee_count_WA, 
from employees 
where country_code = 'WA';

select 
count(*) employee_count_WA 
from employees 
where country_code = 'WA';

select 
	count(*) employee_count_WA, 
	sum(salary) total_salary, 
    sum(commission) total_commision, 
    min(salary + nvl(commission, 0)) min_compensation, 
    max(salary + nvl(salay, 0)) max_compensation 
from employees 
where country_code = 'WA';

select 
	count(*) employee_count_WA, 
	sum(salary) total_salary, 
    sum(commission) total_commision, 
    min(salary + nvl(commission, 0)) min_compensation, 
    max(salary + nvl(salary, 0)) max_compensation 
from employees 
where country_code = 'WA';

select 
	count(*) employee_count_WA, 
	sum(salary) total_salary, 
    sum(commission) total_commision, 
    min(salary + nvl(commission, 0)) min_compensation, 
    max(salary + nvl(salary, 0)) max_compensation 
from employees 
where country_code = 'WA';

select 
	count(*) employee_count_WA, 
	sum(salary) total_salary, 
    sum(nvl(commission, 0)) total_commision, 
    min(salary + nvl(commission, 0)) min_compensation, 
    max(salary + nvl(salary, 0)) max_compensation 
from employees 
where country_code = 'WA';

select *  
from employees  
where country_code = 'WA';

select 
	count(*) employee_count_WA, 
	sum(salary) total_salary, 
    sum(nvl(commission, 0)) total_commision, 
    min(salary + nvl(commission, 0)) min_compensation, 
    max(salary + nvl(commission, 0)) max_compensation 
from employees 
where country_code = 'WA';

select 
	count(*) employee_count_WA, 
	sum(salary) total_salary, 
    sum(nvl(commission, 0)) total_commision, 
    min(salary + nvl(commission, 0)) min_compensation, 
    max(salary + nvl(commission, 0)) max_compensation 
from employees;

alter table EMPLOYEES compress for oltp;

alter table DEPARTMENTS compress for oltp;

alter table EMPLOYEES compress for oltp;

alter table DEPARTMENTS compress for oltp;

alter table EMPLOYEES compress for oltp;

alter table DEPARTMENTS compress for oltp;

delete from employees 
where name = 'Sam smith';

select * from employees;

delete from employees 
where name = 'Sam Smith';

select * from employees;

drop table departments cascade constraints;

drop table employees cascade constraints;

select object_name, 
	original_name, 
	type, 
	can_undrop, 
	can_purge 
from recyclebin;

flashback table DEPARTMENTS to before drop


select count(*) employees 
from employees;

flashback table EMPLOYEES to before drop


select count(*) departments 
from departments;

select count(*) employees 
from employees;

insert into departments(name, location) values 
	('Base de datos', '3CM4');

insert into imployees 
	(name, job, salary, deptno) 
values 
	('Alejandro Martin', 'Alumno', '0', 
    (select deptno 
    from departments 
    where name = 'Base de datos'));

insert into employees 
	(name, job, salary, deptno) 
values 
	('Alejandro Martin', 'Alumno', '0', 
    (select deptno 
    from departments 
    where name = 'Base de datos'));

select * from employees;

update employees 
set manager = 1 
where name = 'Alejandro Martin';

update employees 
set manager = 777 
where name = 'Alejandro Martin';

update employees 
set commission = 777 
where name = 'Alejandro Martin';

select * from employees;

