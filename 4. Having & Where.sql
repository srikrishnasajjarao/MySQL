# --- WHERE clause filters rows before any grouping happens ---
# --- HAVING clause is used after the data has been grouped, so it filters the groups themselves ---


select gender, avg(age)
from employee_demographics
where avg(age)>40  # this will thorw an error, bcz avg(age) happens only after grouping but where is filtering before grouping 
group by gender;

select gender, avg(age) as avgage
from employee_demographics
group by gender
having avg(age) >40;

select occupation, avg(salary)
from employee_salary
where occupation like "%manager%"
group by occupation
having avg(salary)>75000;
