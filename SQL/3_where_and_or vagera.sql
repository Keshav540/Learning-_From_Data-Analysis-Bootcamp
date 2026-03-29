# where clause
select * from employee_salary
where first_name = 'Leslie'
;

select * from employee_salary
where salary >= 50000
;

select * from employee_demographics
where gender != 'female'
;

-- and or not - logical operators
select * from employee_demographics
where gender != 'female'
and not birth_date > '1985-01-01'
;

select * from employee_demographics
where (first_name='Leslie' and age = 44) or age>55 
;

-- like statement - we can add special statements or characters within our like statement to search them
-- % - means the seq is at start of word and, _ - means sequence is at end 
select * from employee_demographics
where first_name like 'Jer%'   #if %jer% means jer kahi toh hoga word mein
;


select * from employee_demographics
where first_name like 'a__'   # mtlb 2 character hoge a ke baad na zayada na km 
;

select * from employee_demographics
where birth_date like '1989%'    
;

