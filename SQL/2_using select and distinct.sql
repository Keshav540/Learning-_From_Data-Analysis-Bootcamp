select *
from employee_demographics;             # *- select everything , ; -> tells sql where is the end of command , also double click on database which u want sql to act on or use from parks_and_recreation.employee_demographics;

select first_name,last_name,        #can also specify the name of coloumns
birth_date,
age,
(age + 10) * 10 + 10     
from employee_demographics;

#pemdas -> order of operations in sql parenthesis,exponent,multiplication,division,adition,subtraction

#distinct - give distinct values in table

select distinct gender
from employee_demographics;
