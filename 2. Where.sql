select *
from parks_and_recreation.employee_demographics;

select *
from parks_and_recreation.employee_demographics
where first_name = 'Tom';

select first_name,
last_name,
age
from parks_and_recreation.employee_demographics
where age >=43;

select *
from parks_and_recreation.employee_demographics
where birth_date > '1987-03-05';

# AND OR NOT --- Logical operators

SELECT *
FROM parks_and_recreation.employee_demographics
WHERE first_name = 'Leslie' AND age = 44;

SELECT *
FROM parks_and_recreation.employee_demographics
WHERE (first_name = 'Leslie' AND age = 44) OR age >55;

SELECT *
FROM parks_and_recreation.employee_demographics
WHERE age > 43 OR gender != 'Male';


# LIKE statement
# %(anything) and _(specific)

SELECT *
FROM parks_and_recreation.employee_demographics
WHERE first_name LIKE 'A%';

SELECT *
FROM parks_and_recreation.employee_demographics
WHERE first_name LIKE 'A__';


SELECT *
FROM parks_and_recreation.employee_demographics
WHERE first_name LIKE '%n';

SELECT *
FROM parks_and_recreation.employee_demographics
WHERE first_name LIKE '%a%';

SELECT *
FROM parks_and_recreation.employee_demographics
WHERE birth_date LIKE '1994%';


SELECT *
FROM parks_and_recreation.employee_demographics
WHERE last_name LIKE '%ud__%';





