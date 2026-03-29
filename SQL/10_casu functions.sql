-- case statements  = iski if else

SELECT first_name,
last_name,
age,
CASE
WHEN age <= 30 THEN 'Young'
WHEN age BETWEEN 31 and 50 THEN 'Old'
WHEN age >= 50 THEN "On Death's Door"
END AS Age_Bracket
FROM employee_demographics
;


-- increase salary
-- <50000 = 5%
-- >50000 = 7%
-- finance = 10% bonus - iski info parks ki table se nikl jayegi

select first_name, last_name, salary,
case
	when salary <50000 then salary * 1.05
    when salary >50000 then salary * 1.07
end as new_salary,
case
	when dept_id = 6 then salary * .10
end as bonus
from employee_salary
;


SELECT *
FROM employee_salary;
SELECT *
FROM parks_departments;