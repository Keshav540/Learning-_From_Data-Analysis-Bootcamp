-- EDA - exploratory data analysis  - means exploring data finding insights useful one

select * 
from layoff_staging4
;

alter table layoff_staging4
drop row_num;

select max(total_laid_off), max(percentage_laid_off) 
from layoff_staging4
;


select * 
from layoff_staging4
where percentage_laid_off = 1
order by funds_raised_millions desc;
;
-- just checking which company took the most amount of funding

SELECT company, SUM(total_laid_off)
FROM layoff_staging4
GROUP BY company
ORDER BY 2 DESC;
-- from this we get to know how many total employees are laid of and which company has laid of the most

select min(`date`), max(`date`)
from layoff_staging4
;  
-- from this i explored from when to when are these employees are laid of

select industry, sum(total_laid_off)
FROM layoff_staging4
GROUP BY industry
ORDER BY 2 DESC;
-- here we got to know which industry got the most laid off

select * 
from layoff_staging4
;

-- not fun btw this is last so u can just explore as much as u want
-- sql done yayayayayaayayyayayay














