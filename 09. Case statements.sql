# -- Case Statements -- acts like If/Else

select first_name,
last_name,
age,
case 
    when age <=30 then 'young'
    when age between 31 and 50 then 'old'
    when age >= 50 then 'on death bed'
end as Age_bracket
from employee_demographics;


select first_name,
last_name,
concat(first_name,' ',last_name) as fullname,
case 
    when salary <= 25000 then 'entry level'
    when salary between 25001 and 65000 then 'mid senior level'
    when salary >= 65001 then 'senior level'
end as Job_level
from employee_salary;







select *
from parks_departments;

select *
from employee_salary as emp
join parks_departments as park
on park.department_id = emp.dept_id;


# -- salary < 50000 , 5% increase
# -- salary > 50000 , 7% increase
# -- finance , 10% bonus

select first_name,
last_name,
salary,
case
	when salary < 50000 then salary*1.05
    when salary > 50000 then salary*1.07
end as New_salary,
case
	when department_name = "Finance" then salary*.1
end as bonus
from employee_salary as sal
join parks_departments as park
on sal.dept_id = park.department_id;

