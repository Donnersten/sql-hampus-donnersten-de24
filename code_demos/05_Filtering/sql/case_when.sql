SELECT * FROM main.data_jobs dj;

SELECT
	CASE WHEN experience_level = 'SE' THEN 'Senior'
		WHEN experience_level = 'MI' THEN 'Mid Level'
		WHEN experience_level = 'EN' THEN 'Entry Level'
		WHEN experience_level = 'EX' THEN 'Expwert'
	END AS experience_level , 
	* EXCLUDE (experience_level)
FROM
	main.data_jobs dj
	
	
UPDATE
	main.data_jobs
SET
	experience_level = CASE
		WHEN experience_level = 'SE' THEN 'Senior'
		WHEN experience_level = 'MI' THEN 'Mid Level'
		WHEN experience_level = 'EN' THEN 'Entry Level'
		WHEN experience_level = 'EX' THEN 'Expwert'
	END ;
	
SELECT DISTINCT experience_level FROM main.data_jobs;
SELECT *from main.data_jobs dj;