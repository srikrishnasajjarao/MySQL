-- joins

select * 
from employee_demographics;

select *
from employee_salary;

-- inner join - returns only the rows where there is a match in both tables --

select*
from employee_demographics as dem
join employee_salary as sal
on dem.employee_id = sal.employee_id;

select dem.employee_id, age, occupation, salary
from employee_demographics as dem
join employee_salary as sal
    on dem.employee_id = sal.employee_id;
 
 
 -- left join -- returns all rows from the left table (the first table), and the matching rows from the right table. If there’s no match, the result will contain NULL for columns from the right table
 select *
 from employee_demographics as dem
 left join employee_salary as sal
    on dem.employee_id = sal.employee_id;
    
    
select *
from employee_salary as sal
left join employee_demographics as dem
    on dem.employee_id = sal.employee_id;
    

-- right -- returns all rows from the right table, and the matching rows from the left table. If there’s no match, the result will contain NULL for columns from the left table.

select *
from employee_demographics as dem
right join employee_salary as sal
    on dem.employee_id = sal.employee_id;
    
select *
from employee_salary as sal
right join employee_demographics as dem
    on dem.employee_id = sal.employee_id;
    
-- self join -- 
select *
from employee_salary as emp1
join employee_salary as emp2
  on emp1.employee_id = emp2.employee_id;
  

select *
from employee_salary as emp1
join employee_salary as emp2
  on emp1.employee_id + 1 = emp2.employee_id;
  

select emp1.employee_id as emp_id,
emp1.first_name as emp_firstname,
emp1.last_name as emp_lastname,
emp2.employee_id as santa_id,
emp2.first_name as santa_firstname,
emp2.last_name as santa_lastname
from employee_salary as emp1
join employee_salary as emp2
  on emp1.employee_id + 1 = emp2.employee_id;
    
-- cross join --

select *
from employee_demographics as dem
cross join employee_salary as sal;
