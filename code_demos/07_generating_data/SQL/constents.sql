SELECT 42 AS meaning_of_life;

SELECT 42;

VALUES (1), (2), (3);

CREATE TABLE IF NOT EXISTS people_records as(
SELECT
	*
FROM
	(
VALUES 
(1,'Johan'),
(2, 'Johanna'),
(3, 'Hampus')) AS t(id,name));

DESC;