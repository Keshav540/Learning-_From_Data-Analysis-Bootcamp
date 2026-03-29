-- joins


-- inner join - return column that is same in both tables
 
select * 
from employee_demographics
;

select *
from employee_salary
;


select * 
from employee_demographics
inner join employee_salary
	on employee_demographics.employee_id = employee_salary.employee_id            -- joining in the basis of this
;          -- employee id ka 2 nahi hoga output mein cause 2 employee demographics table mein nahi hai aur dono table mein hoga tabhi aayega  



-- is example mein alisaing bhi use kr sakte hai 
select * 
from employee_demographics as dem
inner join employee_salary as sal
	on dem.employee_id = sal.employee_id            
; 


-- select colums from these joins

select dem.employee_id , age , occupation       #similar columns mein batana padta ki konse se le rahe
from employee_demographics as dem
inner join employee_salary as sal
	on dem.employee_id = sal.employee_id            
; 


# outer join - left join - take all vaule from left table + the match similarly right join from right side + the matching values

select *     
from employee_demographics as dem
right join employee_salary as sal
	on dem.employee_id = sal.employee_id            
; 

# self join - tie table to itself

select *
from employee_salary as emp1
join employee_salary as emp2
	on emp1.employee_id + 1 = emp2.employee_id
;

-- above table but in good formatting making a secret santa

select emp1.employee_id as emp_santa,
emp1.first_name as First_name_santa,
emp1.last_name as last_name_santa,
emp2.employee_id as emp_name,
emp2.first_name as First_name_emp,
emp2.last_name as last_name_emp
from employee_salary as emp1
join employee_salary as emp2
	on emp1.employee_id + 1 = emp2.employee_id
;


-- joining multiple table - this is ususlly called reference table used to see all department 

select *
from employee_demographics as dem
inner join employee_salary as sal
	on dem.employee_id = sal.employee_id            
inner join parks_departments as pd
	on sal.dept_id = department_id      -- parks ki table demographic se nahi salary se join hogi cause 1 comon column hona zaruri hai
; 

select *
from parks_departments
;