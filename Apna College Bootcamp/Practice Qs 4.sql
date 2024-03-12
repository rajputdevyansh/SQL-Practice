/*
Qs: In the student table :
a. Change the name of column to "full_name".
b. Delete all the students who scored marks less than 80.
c. Delete the column for grades.
*/

insert into student(rollno, name, marks, grade, city) values
(101,"anil",78,"C","Pune"),
(102,"bhumika",93,"A","Mumbai"),
(103,"chetan",85,"B","Mumbai"),
(104,"dhruv",96,"A","Delhi"),
(105,"emanuel",12,"F","Delhi"),
(106,"farah",82,"B","Delhi");

select * from student;

alter table student
change name full_name varchar(50);

select * from student;

set sql_safe_updates=0;

Delete from student
where marks<80;

select * from student;

alter table student
drop column grade;

select * from student;