select *
from employee_salary;

select *
from employee_salary
order by salary desc
limit 7;

select *
from employee_salary
order by salary desc
limit 3,2;
-- The first number (3) is the offset, meaning it skips the first 3 rows in the sorted list
-- The second number (2) specifies the number of rows to return after the offset
-- This query retrieves the 4th and 5th highest salaries (the two rows after skipping the top 3 highest salaries) --

select gender AS Sex, avg(age) as AA
from employee_demographics
group by gender
having AA>40;


