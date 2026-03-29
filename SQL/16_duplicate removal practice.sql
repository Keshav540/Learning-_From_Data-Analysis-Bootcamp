-- EDA - exploratory data analysis  - means exploring data finding insights useful one

select * 
from layoff_staging3
;

select max(total_laid_off), max(percentage_laid_off) 
from layoff_staging3
;


select * 
from layoff_staging3
where percentage_laid_off = 1
order by total_laid_off desc;

-- now for somereason my data has duplicates (reason is i copied my table twice in previous file)so i'll delete duplicate data like in previous file

select *
from layoff_staging3;


select *,
row_number() over(partition by company, location, industry, total_laid_off, percentage_laid_off, `date`, stage, country, funds_raised_millions) as row_num 
from layoff_staging3                  
;  

with duplicate_cte1 as
(
	select *,
	row_number() over(partition by company, location, industry, total_laid_off, percentage_laid_off, `date`, stage, country, funds_raised_millions) as row_num 
	from layoff_staging3                  
)
select *
from duplicate_cte1
where row_num > 1 
;

CREATE TABLE `layoff_staging4` (
  `company` text,
  `location` text,
  `industry` text,
  `total_laid_off` int DEFAULT NULL,
  `percentage_laid_off` text,
  `date` date DEFAULT NULL,
  `stage` text,
  `country` text,
  `funds_raised_millions` int DEFAULT NULL,
  `row_num` int
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

select * 
from layoff_staging4
;

insert into layoff_staging4
	select *,
	row_number() over(partition by company, location, industry, total_laid_off, percentage_laid_off, `date`, stage, country, funds_raised_millions) as row_num 
	from layoff_staging3 
;
select * from layoff_staging4;

Delete 
from layoff_staging4                          
where row_num > 1
;


-- now this became a practice of removing duplicates so we'll use it for eda in next file 




























