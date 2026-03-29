-- Union  -  combine different rows

select age, gender
from employee_demographics
union
select first_name, last_name
from employee_salary
;


select first_name, last_name
from employee_demographics
union distinct                                           -- bby default it is union dintinct meaning it is removing duplicate values 
select first_name, last_name
from employee_salary
;

select first_name, last_name
from employee_demographics
union all         -- opposite of distinct
select first_name, last_name
from employee_salary
;

-- let asume park department want to find out all people above 40 and also the highest paying employee to save money

SELECT first_name, last_name, 'Old Man' AS Labell
FROM employee_demographics
WHERE age > 40 AND gender = 'Male'
UNION
SELECT first_name, last_name, 'Old Lady' AS Label
FROM employee_demographics
WHERE age > 40 AND gender = 'Female'
UNION
SELECT first_name, last_name, 'Highly Paid Employee' AS Label
FROM employee_salary
WHERE salary > 70000
;









