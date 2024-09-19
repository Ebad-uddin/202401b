-- DDL Commands --
-- Create, alter, truncate, drop --

-- table creation
use mwf_9_11;

create table faculty(
fac_id int unique not null auto_increment,
fac_name varchar(100) not null,
fac_qualification varchar(100) not null,
fac_specialization varchar(200),
fac_phone varchar(12) not null,
city varchar(50) default'Karachi',
age varchar(50) check(age >= 25)
);


insert into student(std_id, std_name, std_email, std_phone, std_age) values (1, 'Ebad Uddin Ahmed', 'ebad@gmail.com', 2342523423, 28);
insert into student(std_id, std_name, std_email, std_phone, std_age) values (2, 'Ali ahmed', 'ali@gmail.com', 23425265645, 20);
insert into student(std_id, std_name, std_email, std_phone, std_age) values (3, 'Aman', 'aman@gmail.com', 23424524353, 22);

select * from faculty;

Alter table student add gender varchar(50);
Alter table student drop gender;
Alter table student change std_age age varchar(40);

-- DML Commands
-- Constraints
-- not null
-- unique
-- check
-- default
-- autoincrement
-- primary key



update student set age = 21 where std_id = 2;

use sample_db;

-- sorting 
-- order by
-- like a%, %b, %a%

select * from emp order by ename desc; 

select * from emp where ename LIKE 'a%';

select * from emp where ename LIKE '%s';

select * from emp where ename LIKE '%james%';

select * from emp where ename LIKE '_a';

select  distinct(job) as total_designations from emp;

-- retrieve range of values we use between clause

select ename, sal from emp where sal between 800 and 2000;

select * from emp where ename in ('KING' ,'MILLER');

select * from emp where ename = 'KING' OR ename = 'MILLER'; 


insert into dept (deptno, dname, loc) values (10, 'HR', 'Karachi');
insert into dept (deptno, dname, loc) values (20, 'Software', 'Islamabad');
insert into dept (deptno, dname, loc) values (30, 'IT', 'Lahore');

select emp.ename, dept.dname from emp inner join dept on dept.deptno = emp.dept;
-- alias names with joins
select e.ename, e.job, e.sal, d.dname from emp as e inner join dept as d on d.deptno = e.dept;

INSERT INTO EMP VALUES
  (7309, 'SMITH', 'CLERK', 7902, '07-12-1980', 800, NULL, 40);
  INSERT INTO EMP VALUES
  (7399, 'Salman Khan', 'Manager', 7905, '07-12-1980', 2000, NULL, 50);
  
  -- left join 
  
  select * from emp as e left join dept as d on e.dept = d.deptno;
  
  select t1.ename, t1.job, t2.ename, t2.job from emp as t1 inner join emp as t2 on t2.assign_to = t1.empno;
  
  -- agregate function
  -- count(), max(), min(), avg(), sum()
  -- alias name
  
  select count(job) as total_jobs from emp;
  select sum(sal) as total_salary from emp;
  select avg(sal) as Avg_salary from emp;
  select max(sal) as Max_salary from emp;
  select min(sal) as Min_salary from emp;
  
  -- group by clause
  
  select count(job) as count_jobs, job from emp group by(job);
  ALTER TABLE EMP ADD COLUMN GENDER VARCHAR(1);

  
UPDATE EMP SET GENDER = 
    CASE 
        WHEN ename IN ('SMITH', 'ADAMS', 'JAMES', 'WARD', 'CLARK', 'MILLER', 'FORD') THEN 'M'
        WHEN ename IN ('ALLEN', 'BLAKE', 'SCOTT', 'KING', 'TURNER', 'MARTIN', 'JONES') THEN 'M'
        ELSE 'F' -- Assign 'F' to any remaining names not listed
    END;

update emp set gender =  'F' where empno  = 7309;

select sum(sal), gender from emp group by(gender);
  
  
  
  
  
  
  
  
















