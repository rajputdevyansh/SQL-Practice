/* Write the Query to find avg marks 
\in each city in ascending order.*/

use college;

select avg(marks) as marks, city
from student 
group by city
order by marks asc;