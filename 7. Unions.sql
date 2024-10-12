# union = adds rows where as joins adds columns

select *
from employee_demographics
union
select *
from employee_salary;
# this is a bad example, data is bad

select first_name, last_name
from employee_demographics
union
select first_name, last_name
from employee_salary;
# by default union gives distinct values

select first_name, last_name
from employee_demographics
union all
select first_name, last_name
from employee_salary;
# union all give sduplicates too

select first_name, last_name, 'old' as label
from employee_demographics
where age > 50
union
select first_name, last_name, 'HPE' as label
from employee_salary
where salary > 70000;


select first_name, last_name, 'old man' as label
from employee_demographics
where age > 40 and gender = 'Male'
union
select first_name, last_name, 'old lady' as label
from employee_demographics
where age > 40 and gender = 'female'
union
select first_name, last_name, 'HPE' as label
from employee_salary
where salary > 70000;


select first_name, last_name, 'old man' as label
from employee_demographics
where age > 40 and gender = 'Male'
union
select first_name, last_name, 'old lady' as label
from employee_demographics
where age > 40 and gender = 'female'
union
select first_name, last_name, 'HPE' as label
from employee_salary
where salary > 70000
order by first_name;