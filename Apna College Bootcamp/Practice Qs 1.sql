/*Qs: Create a database for your company named XYZ.
Stepl : create a table inside this DB to store employee info (id, name and salary).
Step2 : Add following information in the DB :
1, "adam", 25000
2, "bob", 30000
3, "casey", 40000
Step3 : Select & view all your table data.*/

create database if not exists XYZ;

use XYZ;

create table employee_info(
id int primary key,
name varchar(50) not null,
salary float not null);

insert into employee_info (id,name,salary)
values
(1,"adam",25000),
(2,"bob",30000),
(3,"casey",40000);

select * from employee_info;



