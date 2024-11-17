
--IN
SELECT
	DISTINCT COUNT(*)
FROM
	main.data_jobs dj
WHERE
	company_size IN ('M', 'S');
	
-- NOT IN 
SELECT
	DISTINCT COUNT(*)
FROM
	main.data_jobs dj
WHERE
	company_size NOT IN ('M', 'S');
	
--FILTER CLAUSE 
SELECT
	COUNT(*) AS total_jobs,
	COUNT(*) FILTER (
WHERE
	remote_ratio = 100) AS remote_jobs,
	ROUND(remote_jobs / total_jobs * 100,
	2) AS procent_remote_jobs 
FROM
	main.data_jobs dj;

--OFFSET
SELECT * FROM main.data_jobs dj OFFSET 6;