-- string function - perform operations of string 
select first_name, length(first_name)
from employee_demographics
order by 2 
;

select upper('sky');
select lower('SKY');

SELECT first_name, UPPER(first_name)
FROM employee_demographics
;

-- trim removes the white spaces from left or right
select trim('           sky                 ');
select ltrim('           sky                 ');
select rtrim('           sky                 ');


select first_name , left(first_name, 4),           -- phele 4 char first name ke print kr dega
right(first_name, 4)
from employee_demographics
;

-- substring -- cut kr deta hai

SELECT first_name,
LEFT(first_name, 4),
RIGHT(first_name, 4),
SUBSTRING(first_name,3,2),
birth_date,
SUBSTRING(birth_date,6,2) AS birth_month
FROM employee_demographics
;

-- replace - jaha a dikhega vaha replace kr dega example
select first_name, replace(first_name, 'a', 'k')
from employee_demographics
;

-- locate
select locate('x', 'alaxander');

select first_name, locate('s',first_name)
from employee_demographics
;

-- concatanation

select first_name, last_name,
concat(first_name,' ',last_name) as full_name
from employee_demographics
;
 