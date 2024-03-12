create database temp1;
drop database temp1;
create database temp2;
drop database temp2;
create database college;

use college;

create table student(
id int primary key,
name varchar(50),
age int not null);

insert into student values(1,"Devyansh",23);
insert into student values(2,"Ekansh",24);

select * from student;

drop table student;

create table student(
rollno int primary key,
name varchar(50));

insert into student (rollno, name) values
(101,"Karan"),
(102,"Arjun"),
(103,"Ram");

select * from student;

create table temp1(
id int unique);

insert into temp1 values(101);
insert into temp1 values(101);  

drop table temp1;
create table temp1(
id int,
name varchar(50),
age int,
city varchar(20),
primary key(id, name));

create table emp(
id int,
salary int default 25000);

insert into emp(id) values(101);
select * from emp;

drop database college;

create database college;
use college;
create table student(
rollno int primary key,
name varchar(50),
marks int not null,
grade varchar(1),
city varchar(20));

insert into student(rollno, name, marks, grade, city) values
(101,"anil",78,"C","Pune"),
(102,"bhumika",93,"A","Mumbai"),
(103,"chetan",85,"B","Mumbai"),
(104,"dhruv",96,"A","Delhi"),
(105,"emanuel",12,"F","Delhi"),
(106,"farah",82,"B","Delhi");

select name, rollno from student;

select distinct city from student;

select * from student where marks>80;

select * from student where city = "Mumbai";

use college;

select count(name), city
from student
group by city
having max(marks)>90;

set sql_safe_updates=0;

update student
set grade="O"
where grade="A";

set sql_safe_updates=1;

select * from student;

update student
set marks=82
where rollno=105;

update student
set grade="B"
where marks between 80 and 90;

update student
set marks=marks+1;

create table dept(
id int primary key,
name varchar(50));

create table teacher(
id int primary key,
name varchar(50),
deptid int,
foreign key(deptid) references dept(id));

alter table student
add column age int not null default 19;

select * from student;

alter table student modify age varchar(2);

select * from student;

alter table student change age stu_age int;

select * from student;

alter table student
drop column stu_age;

select * from student;

alter table student rename to stu;

select * from stu;

truncate table stu;

alter table stu rename to student;
use college;
drop table student;
drop table dept;
drop table teacher;

create table student(
id int primary key,
name varchar(50));

insert into student values
(101,"adam"),
(102,"bob"),
(103,"casey");

create table course(
id int primary key,
course varchar(50));

insert into course values
(102, "english"),
(105,"maths"),
(103, "science"),
(107,"Computer science");

select * from student;
select * from course;

select * 
from student s
inner join course c
on s.id=c.id;

select *
from student s
left join course c
on s.id=c.id;

select * 
from student s
right join course c
on s.id=c.id; 

select *
from student s
left join course c
on s.id=c.id
union
select * 
from student s
right join course c
on s.id=c.id; 

select *
from student s
left join course c
on s.id=c.id
where c.id is null; 

select * 
from student s
right join course c
on s.id=c.id
where s.id is null;

CREATE TABLE employee(
id INT PRIMARY KEY,
name VARCHAR(50),
manager_id INT);

insert into employee values
(101,"adam",103),
(102,"bob",104),
(103,"casey",null),
(104,"donald",103);

select a.name as Manager,b.name as Employee
from employee as a
join employee as b
on a.id=b.manager_id;