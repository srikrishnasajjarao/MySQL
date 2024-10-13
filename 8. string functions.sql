# -- string functions --
# used to manipulate and perform operations on text data
# length, trim,ltrim,rtrim,replace,upper,lower,left,right,substring,locate,concat

select length("skyfall");

select *
from employee_demographics;

select first_name, length(first_name)
from employee_demographics;

select first_name, length(first_name) as len
from employee_demographics
order by len;


select upper("sky");
select lower('SKY');


select first_name, upper(first_name) as FName
from employee_demographics;

select ("     sky     ") as sky;
select trim("      sky      ") as sky;
select ltrim("      sky      ") as sky;
select rtrim("      sky      ") as sky;

select first_name, left(first_name,4)
from employee_demographics;

select first_name, right(first_name,4)
from employee_demographics;

select first_name, 
left(first_name,4),
right(first_name,4)
from employee_demographics;

select first_name, 
left(first_name,4),
right(first_name,4),
substring(first_name, 3,3),
birth_date,
substring(birth_date, 1,4) as birth_year,
substring(birth_date, 6,2) as birth_month,
substring(birth_date, 9,2) as birth_date
from employee_demographics;

select first_name, 
replace(first_name, 'i', 'o'),
replace(first_name, 'o', 'i')
from employee_demographics;

select locate('a', 'srikrishna');

select first_name, locate('a', first_name)
from employee_demographics;

select occupation, locate('of',occupation)
from employee_salary;

select first_name, 
last_name, 
concat(first_name, ' ',last_name) as Full_Name
from employee_demographics;