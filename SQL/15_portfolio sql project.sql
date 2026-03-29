-- Data cleaning

select * 
from layoffs;

-- removing duplicates
-- standardize data
-- null/blank values
-- remove any columns

create table layoff_staging         -- copying the table column data to other table to perform operations
like layoffs
;


select * 
from layoff_staging;

insert layoff_staging
select * from layoffs
;

select * 
from layoff_staging;

select *,
row_number() over(partition by company, location, industry, total_laid_off, percentage_laid_off, `date`, stage, country, funds_raised_millions) as row_num 
from layoff_staging                  
;                                     -- use to identify duplicates = ROW_NUMBER() lets you mark the first occurrence as row_num = 1 and duplicates as row_num = 2, 3, ….

with duplicate_cte as
(
	select *,
	row_number() over(partition by company, location, industry, total_laid_off, percentage_laid_off, `date`, stage, country, funds_raised_millions) as row_num 
	from layoff_staging                  
)
select *
from duplicate_cte
where row_num > 1 
;

-- confirming if the duplicates are wrong
select * 
from layoff_staging
where company = 'Oda'                 -- as we can see the data is very similar but not exactly same, so we'll partition by every column
;                                     -- change done


with duplicate_cte as
(
	select *,
	row_number() over(partition by company, location, industry, total_laid_off, percentage_laid_off, `date`, stage, country, funds_raised_millions) as row_num 
	from layoff_staging                  
)
delete                                  -- this does not work in mysql but in microsoft sql it works cause it lets the query update the cte
from duplicate_cte
where row_num > 1 
;

-- so what we are going to do is create a table just like layoff_staging of this cte and update
-- to create right click on layoff_staging - > copy to clipboard and create statement then just paste and change the name of statement

CREATE TABLE `layoff_staging3` (
  `company` text,
  `location` text,
  `industry` text,
  `total_laid_off` int DEFAULT NULL,
  `percentage_laid_off` text,
  `date` text,
  `stage` text,
  `country` text,
  `funds_raised_millions` int DEFAULT NULL,
  `row_num` int
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;


select * 
from layoff_staging3;

insert into layoff_staging3
	select *,
	row_number() over(partition by company, location, industry, total_laid_off, percentage_laid_off, `date`, stage, country, funds_raised_millions) as row_num 
	from layoff_staging 
;
DELETE FROM layoff_staging3
WHERE row_num > 1;

Delete 
from layoff_staging3                            -- yaha pe safe update disable kara hai tb jaake ye kaam kara hai
where row_num > 1
;
                                                   -- - DELETE → removes the whole row from the table.
                                                   -- - UPDATE → changes values in specific columns while keeping the row

select * from layoff_staging3 ;


-- standardizing data - finding and fixes issues in data

select company, trim(company)
from layoff_staging3
;

update layoff_staging3
set company = trim(company)
;

select distinct(industry)
from layoff_staging3
order by 1
;

DELETE FROM layoff_staging3
WHERE industry IS NULL OR industry = '';


select *
from layoff_staging3
;

-- crypto and crypto currency are same so we'll try to make their name same easy for visualization

select *
from layoff_staging3 
where industry like 'Crypto%'
;

UPDATE layoff_staging3
SET industry = 'Crypto'
WHERE industry LIKE 'Crypto%';

select distinct(country), trim(trailing '.' from country)
from layoff_staging3
order by 1
;

update layoff_staging3
set country = trim(trailing '.' from country)
;

select *
from layoff_staging3 ;

select `date`,
str_to_date(`date`, '%m/%d/%Y')
from layoff_staging3
;

update layoff_staging3
set `date` = str_to_date(`date`, '%m/%d/%Y')
;

select *
from layoff_staging3 ;

-- we only changed the format of date but now we'll change the data type of table but never do this on main table first do it in the table u copied

alter table layoff_staging3
modify column `date` date
;


-- now removing null and blank values
select * 
from layoff_staging3
where total_laid_off is null
and percentage_laid_off is null 
;


-- industry vala upr kr liya
SELECT *
FROM layoff_staging3 t1
JOIN layoff_staging3 t2
ON t1.company = t2.company
WHERE (t1.industry IS NULL OR t1.industry = '')
AND t2.industry IS NOT NULL
;
-- i deleted null rows from above statement which i did in the start so it is showing blank otherwisw it would have shown all the rows with industry null and all the rows with industry not null but same company so we can repopulate the missing data 

UPDATE layoffs_staging2 t1
JOIN layoffs_staging2 t2
ON t1.company = t2.company
SET t1.industry = t2.industry
WHERE (t1.industry IS NULL OR t1. industry = '')
AND t2.industry IS NOT NULL;             -- code for repopulating the data if u didn't delete null rows of industry at start

select * 
from layoff_staging3
where total_laid_off is null
and percentage_laid_off is null 
;


delete 
from layoff_staging3
where total_laid_off is null
or percentage_laid_off is null 
or funds_raised_millions is null 
;                                       -- removed all rows with null values

select * from layoff_staging3;

alter table layoff_staging3
drop row_num;

select * from layoff_staging3;





















