# having and where

select gender, avg(age)
from employee_demographics
group by gender
having avg(age) > 40
;

select occupation, avg(salary)
from employee_salary
where occupation like '%manager%'          -- having group by ke phele nahi aa sakta and same vica versa for where 
group by occupation
having avg(salary) > 75000
;