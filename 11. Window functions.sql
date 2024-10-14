# -- WINDOW FUNCTIONS ----

select gender, avg(salary) as avg_salary
from employee_demographics as dem
join employee_salary as sal
on dem.employee_id = sal.employee_id
group by gender;


select gender, avg(salary) over()
from employee_demographics as dem
join employee_salary as sal
on dem.employee_id = sal.employee_id;


select gender, avg(salary) over(partition by gender)
from employee_demographics as dem
join employee_salary as sal
on dem.employee_id = sal.employee_id;


select dem.first_name,dem.last_name,gender,salary, 
avg(salary) over(partition by gender)
from employee_demographics as dem
join employee_salary as sal
on dem.employee_id = sal.employee_id;


select dem.first_name,dem.last_name,gender,salary, 
sum(salary) over(partition by gender order by dem.employee_id) as rolling_total
from employee_demographics as dem
join employee_salary as sal
on dem.employee_id = sal.employee_id;



select dem.first_name,dem.last_name,gender,salary, 
row_number() over(partition by gender order by salary) as row_num,
rank() over(partition by gender order by salary) as rank_num, 
dense_rank() over(partition by gender order by salary) as dense_rank_num
from employee_demographics as dem
join employee_salary as sal
on dem.employee_id = sal.employee_id;

SELECT 
  dem.first_name, 
  dem.last_name, 
  gender, salary,
  AVG(salary) OVER(PARTITION BY gender ORDER BY salary ROWS BETWEEN 2 PRECEDING AND CURRENT ROW) AS moving_avg
from employee_demographics as dem
join employee_salary as sal
on dem.employee_id = sal.employee_id;
