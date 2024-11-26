CREATE SCHEMA IF NOT EXISTS refined;

CREATE TABLE IF NOT EXISTS refined.sql_glossery as(
	SELECT
		UPPER(TRIM(sql_word)) AS sql_word,
		LOWER(TRIM(description)) AS description,
		LOWER(TRIM(example)) as example
	FROM
		staging.sql_glossery
);

SELECT * FROM refined.sql_glossery;