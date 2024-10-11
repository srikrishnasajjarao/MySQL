-- Group By --

# --Group By-- statement is like a way of organizing information into categories or groups
# it is going to group together rows that have same values in the spwcified column/s that we're actuaclly grouping on
# once grouping is done, we can perform aggregate fucntions on those rows

SELECT *
FROM parks_and_recreation.employee_demographics;



SELECT gender
FROM parks_and_recreation.employee_demographics
group by gender;

-- this below query throws an error, 
-- 1. because SQL’s ONLY_FULL_GROUP_BY mode requires that all columns in the SELECT statement 
-- either appear in the GROUP BY clause or be used with an aggregate function

-- 2. In your query, we're selecting a column (first_name) that isn’t in the GROUP BY clause, 
-- and we’re not applying an aggregate function to it. 
-- 3. This is why MySQL is throwing an error: it doesn’t know how to handle the first_name column in the context of grouping.

SELECT first_name
FROM parks_and_recreation.employee_demographics
group by gender;



SELECT gender, AVG(age)
FROM parks_and_recreation.employee_demographics
group by gender;

SELECT gender, 
AVG(age),
MAX(age),
MIN(age),
COUNT(age)
FROM parks_and_recreation.employee_demographics
group by gender;


SELECT *
FROM employee_salary;

SELECT dept_id
FROM employee_salary
GROUP BY dept_id;

SELECT dept_id, occupation,count(occupation)
FROM employee_salary
GROUP BY dept_id, occupation;

SELECT dept_id,occupation, avg(salary), count(dept_id) AS COUNT
FROM employee_salary
GROUP BY dept_id,occupation;

------ ORDER BY ----------
# order by helps to organize the data in a specific order (ASC or DESC)

SELECT *
FROM employee_salary;

SELECT *
FROM employee_salary
order by first_name;



SELECT *
FROM employee_salary
order by first_name desc;


SELECT *
FROM employee_demographics
order by first_name desc;


SELECT *
FROM employee_demographics
order by gender desc, age desc;