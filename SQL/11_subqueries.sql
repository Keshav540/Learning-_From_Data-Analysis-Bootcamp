-- subqueries = query in another query

SELECT *
FROM employee_demographics
WHERE employee_id IN
	(SELECT employee_id
	FROM employee_salary
	WHERE dept_id = 1)
;


select first_name, salary, 
	( select avg(salary)
	from employee_salary)
from employee_salary
;

SELECT gender, AVG(age), MAX(age), MIN(age), COUNT(age)
FROM employee_demographics
GROUP BY gender;

Select AVG(max_age)
FROM
(SELECT gender,
AVG(age) AS avg_age,
MAX(age) AS max_age,
MIN(age) AS min_age,
COUNT(age)
FROM employee_demographics
GROUP BY gender) AS Agg_table
;

#firse samajhna hai also groupby confusion
