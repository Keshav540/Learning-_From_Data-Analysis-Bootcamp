-- CTEs - common table expression - define the subqueries block so u can then reference in the main query
-- python function ki tarah hai upar define kr do then neeche use karo

WITH cte_example AS
(
SELECT gender, AVG(salary) avg_sal, MAX(salary) max_sal, MIN(salary) min_sal, COUNT(salary) count_sal
FROM employee_demographics dem
JOIN employee_salary sal
ON dem.employee_id = sal.employee_id
GROUP BY gender
)                             
select avg(avg_sal)              -- ye wali statement yahi kaam karegi agar semi colon ke bahar use karenge mtlb ekdum iske neeche nahi tohit won't work
from cte_example
;  -- u can't reuse it



with cte_example as
(
	select first_name, last_name, employee_id, birth_date
    from employee_demographics
	where birth_date > '1985-01-01'
),
cte_example_2 as 
(
	select employee_id, salary 
    from employee_salary
    where salary > 50000
									-- a thing to remember cte mein semicolon nahi aayega
)
select * 
from cte_example
join cte_example_2
	on cte_example.employee_id = cte_example_2.employee_id
;
    














