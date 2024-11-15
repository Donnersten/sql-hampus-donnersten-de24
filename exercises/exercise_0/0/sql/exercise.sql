SELECT * FROM main.sql_course;

--A 
SELECT * FROM 	main.sql_course WHERE content_type = 'exercise';

--B
SELECT * FROM 	main.sql_course WHERE content_type = 'lecture';

--C
SELECT * FROM 	main.sql_course WHERE week = 48;

--D
SELECT  * FROM main.sql_course WHERE week BETWEEN 47 AND 48;

--E
SELECT COUNT(content_type) FROM main.sql_course WHERE content_type = 'lecture';

--F
SELECT COUNT(content_type) FROM main.sql_course WHERE NOT content_type = 'lecture';

--G
SELECT DISTINCT content_type FROM main.sql_course;

--H
DELETE FROM main.sql_course WHERE content = '02_setup_duckdb';

SELECT * FROM main.sql_course;

INSERT
	INTO
	main.sql_course(content,
	week,
	content_type)
VALUES(
'02_setup_duckdb',
46,
'lecture');

--I
SELECT * FROM main.sql_course ORDER BY week, content;