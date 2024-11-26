SELECT COUNT(*) FROM main.clean_salaries cs ;

--A
SELECT COUNT(*) FROM main.clean_salaries WHERE job_title = 'Data Engineer';

--B
SELECT COUNT(DISTINCT job_title) FROM main.clean_salaries;

--C
SELECT COUNT(job_title) as count_job, salary_level FROM main.clean_salaries GROUP BY salary_level ORDER BY count_job DESC; 

--D
SELECT
	experience_level,
	ROUND(MEDIAN(salary_monthly_sek)) as median_salary_sek,
	ROUND(AVG(salary_monthly_sek)) as mean_salary_sek
	FROM main.clean_salaries GROUP BY experience_level ORDER BY median_salary_sek DESC;

--E 
SELECT
	job_title,
	ROUND(MEDIAN(salary_monthly_sek)) as median_salary_sek
from
	main.clean_salaries
GROUP BY
	job_title
ORDER BY
	median_salary_sek DESC;

--F
SELECT
	remote_ratio,
	COUNT(*) AS antal,
	COUNT(*) * 100.0 / SUM(COUNT(*)) OVER () AS procentandel
FROM
	main.clean_salaries
WHERE
	remote_ratio IN (0, 50, 100)
GROUP BY
	remote_ratio;

--G
SELECT
	company_size,
	MIN(salary_monthly_sek) as min_salary_sek,
	MAX(salary_monthly_sek) as max_salary_sek,
	ROUND(MEDIAN(salary_monthly_sek)) as median_salary_sek,
	ROUND(AVG(salary_monthly_sek)) as mean_salary_sek
FROM
	main.clean_salaries
WHERE
	job_title = 'Data Engineer'
GROUP BY
	company_size,
	job_title 
ORDER BY
	median_salary_sek DESC;