use movie;
create table employee(
empno int(10) primary key,
emp_name varchar(20),
dept varchar(20),
salary float,
doj varchar(20),
branch varchar(20));


insert into employee values(101,"amit","production",45000,"12-mar-00","bangalore");
insert into employee values(102,"amit","hr",70000,"03-jul-02","bangalore");
insert into employee values(103,"sunita","management",120000,"11-jan-01","mysore");
insert into employee values(105,"sunita","it",67000,"01-aug-01","mysore");
insert into employee values(106,"mahesh","civil",145000,"20-sep-03","mumbai");
select * from employee;
select empno,salary from employee;
select avg(salary) from  employee;
select count(emp_name) from employee;
select emp_name,count(emp_name) from employee group by emp_name;
select emp_name,sum(salary),count(emp_name) from employee group by emp_name;
select emp_name,sum(salary) from employee where salary>120000 group by emp_name;
select distinct emp_name  from employee order by emp_name desc;
select * from employee where emp_name="amit" and salary>50000;






