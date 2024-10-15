# -- CTE - common table expression


with cte_example_name as
(
select gender, 
avg(salary) as avg_sal, 
max(salary) as max_sal,
min(salary) as min_sal,
count(salary) as count_sal
from employee_demographics as dem
join employee_salary as sal
  on dem.employee_id = sal.employee_id
group by gender
)
select *
from cte_example_name;


with cte_example_name as
(
select gender, 
avg(salary) as avg_sal, 
max(salary) as max_sal,
min(salary) as min_sal,
count(salary) as count_sal
from employee_demographics as dem
join employee_salary as sal
  on dem.employee_id = sal.employee_id
group by gender
)
select avg(avg_sal)
from cte_example_name;