# window functions - group by jaisa but unki unique rows bhi rakh ta hai output mein

select * from employee_salary;
select * from employee_demographics;

select gender, avg(salary)
from employee_demographics as dm
join employee_salary as sl
	on dm.employee_id = sl.employee_id
group by gender
;


-- same work using window function
select gender, avg(salary) over()               -- iska mtlb ye avg salary dekhega over everything mtlb hr ek ki dikhayega grp by jaisa nahi
from employee_demographics as dm
join employee_salary as sl
	on dm.employee_id = sl.employee_id
;

select dm.first_name, dm.last_name, gender, avg(salary) over(partition by gender)               -- partition by grp by ki tarah combine nahi krta bas divide kr deta hai
from employee_demographics as dm
join employee_salary as sl
	on dm.employee_id = sl.employee_id
;                                             -- ye fayeda hai iska ki grp by ki tarah krke bhi sabka individual data aata hai with grp by ka data
												-- avg(salary) over(partition by gender) ye statement baaki column se independent ho jayegi 

# same kaam agr hum grp by use kare toh vo avg(salary) over(partition by gender) tod dega iske basis pe first_name, dem. last_name, gender

SELECT dem.first_name, dem. last_name, gender, AVG(salary) AS avg_salary
FROM employee_demographics dem
JOIN employee_salary sal
ON dem.employee_id = sal.employee_id
GROUP BY dem. first_name, dem. last_name, gender;







-- another function - rolling total another func of window function add krta jaata hai past ka dekh ke

SELECT dem.first_name, dem. last_name, gender, salary,
SUM(salary) OVER(PARTITION BY gender ORDER BY dem.employee_id) AS Rolling_Total
FROM employee_demographics dem
JOIN employee_salary sal
ON dem.employee_id = sal.employee_id;


-- row number ek tareke se hum apne cleaned data ko row wise number dedete hai like new employee id
SELECT dem. employee_id, dem.first_name, dem. last_name, gender, salary,
ROW_NUMBER() over()
FROM employee_demographics dem
JOIN employee_salary sal
ON dem.employee_id = sal.employee_id
;


-- rank and dense rank bhi hai but vo ni kara






