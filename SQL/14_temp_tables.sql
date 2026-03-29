-- temporary table -- as the name suggests it cretes a temp table where u can store or run your queries before executing them on main table

create temporary table temp_table
(
	first_name varchar (50),
    last_name varchar (50),
    movie varchar (50)
)                                         -- created table will show below i.e. action output jaha errors dikhta

select *
from temp_table
;

insert into temp_table 
values('keshav', 'sharma','the little hours');
;


select *
from temp_table
;


-- example 
SELECT *
FROM employee_salary;

CREATE TEMPORARY TABLE salary_over_50k
SELECT *
FROM employee_salary
WHERE salary >= 50000;
;

SELECT *
FROM salary_over_50k;

-- these table will exist in the current memory i can even open a new file and use it but once i close mysql it will get deleted



