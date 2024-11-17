
--AND
SELECT
	job_title ,
	experience_level,
	(10.68 * salary_in_usd)/ 12 as salary_in_sek
FROM
	main.data_jobs
WHERE
	(salary_in_sek> 200000)
	AND (salary_in_sek < 500000)
ORDER BY
	salary_in_sek DESC;
	
-- BETWEEN... AND 
SELECT
	job_title ,
	experience_level,
	(10.68 * salary_in_usd)/ 12 as salary_in_sek
FROM
	main.data_jobs
WHERE
	salary_in_sek BETWEEN 200000 AND 500000
ORDER BY
	salary_in_sek DESC;
	
--OR
SELECT
	COUNT(*) 
FROM
	main.data_jobs dj
WHERE
	experience_level = 'Senior'
	or experience_level = 'Expwert';

--NOT
SELECT
	COUNT(*) 
FROM
	main.data_jobs dj
WHERE
	NOT (experience_level = 'Senior'
	or experience_level = 'Expwert');
