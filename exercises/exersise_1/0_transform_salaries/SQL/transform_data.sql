
SELECT * FROM main.data_jobs dj ;

SELECT DISTINCT employment_type FROM main.data_jobs dj ;



CREATE TABLE IF NOT EXISTS clean_salaries AS (
SELECT
	experience_level,
	employment_type,
	job_title,
	ROUND(10.94 * salary_in_usd) as salary_annual_sek,
	ROUND(salary_annual_sek / 12) as salary_monthly_sek,
	remote_ratio,
	company_size,
	job_title AS salary_level
FROM
	main.data_jobs
);



SELECT
	experience_level,
	employment_type,
	job_title,
	ROUND(10.94 * salary_in_usd) as salary_annual_sek,
	ROUND(salary_annual_sek / 12) as salary_monthly_sek,
	remote_ratio,
	company_size,
	salary as salary_level
FROM
	main.data_jobs;
	

SELECT * FROM main.clean_salaries;

DROP TABLE main.clean_salaries;