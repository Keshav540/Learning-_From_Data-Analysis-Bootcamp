#limit 

select * 
from employee_demographics
limit 3              -- top 3 values of table
;


select * 
from employee_demographics
order by age desc            -- told the top 3 oldest people
limit 3                      -- if i write limit 2,1 mtlb donna (position 2) se star karo and uske agle chuna i.e leslie
;

# aliasing -- change the name of columns also used in joins

select gender, avg(age) as avg_age             #as is the keyword
from employee_demographics
group by gender
having avg_age > 40                  -- ab hum avg(age) hr jagah likhna ni chahate toh hum iska naam badal sakte
;