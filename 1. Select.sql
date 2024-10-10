# select all
select * from parks_and_recreation.employee_demographics;

# select columns
select first_name,
last_name,
age,
age+10,
(age+10)*10 as age1,
(age+10)*10+10 as age2,
(age+10)*10+10-5 as age3
from parks_and_recreation.employee_demographics;
#PEMDAS - Paranthesis,Exponent,Multiplication,Division,Addition,Substraction


# select distinct - gets unique values
select gender
from parks_and_recreation.employee_demographics;

select distinct gender
from parks_and_recreation.employee_demographics;

select distinct first_name,
gender
from parks_and_recreation.employee_demographics;