use xyz;

create table payment(
customer_id int primary key,
customer varchar(50),
mode varchar(40),
city varchar(30));

insert into payment(customer_id, customer, mode, city) values
(101,"Olivia Barrett","Netbanking","Portland"),
(102,"Ethan Sinclair","Credit Card","Miami"),
(103,"Maya Hemandez","Credit Card","Seattle"),
(104,"Liam Donovan","Netbanking","Denver"),
(105,"Sophia Nguyen","Credit Card","New Orleans"),
(106,"Caleb Foster","Debit Card","Minneapolis"),
(107,"Ava Patel","Debit Card","Phoenix"),
(108,"Lucas Carter","Netbanking","Boston"),
(109,"Isabella Martinez","Netbanking","Nashville"),
(110,"Jackson Brooks","Credit Card","Boston");

select * from payment;

select mode as "Payment Method", count(customer_id) as "Total Users"
from payment
group by mode
order by "Total Users" desc;