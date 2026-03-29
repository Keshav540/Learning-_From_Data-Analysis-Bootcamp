-- groupby

select * from employee_demographics  
;

select gender       #yaha sirf gender ya agregated(avg) func hi aa sakta hai 
from employee_demographics    
group by gender
;

select gender, avg(age)
from employee_demographics    
group by gender
;


select occupation, salary
from employee_salary    
group by occupation, salary             #agar grp by lagaya hai toh jo select ke sath hoga vo same neeche hoga
;

select gender, avg(age), max(age), min(age),count(age)
from employee_demographics    
group by gender
;

-- order by
select *
from employee_demographics 
order by first_name desc  #will make it is ascending order by default which is asc order to do decending write desc
;

select * 
from employee_demographics
order by gender,age                      #will first order by gender then age also above desc can also be applied to one like age just add desc by it's side
;

