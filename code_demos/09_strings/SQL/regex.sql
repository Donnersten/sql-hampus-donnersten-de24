SELECT
	regexp_replace(TRIM(description),
	' +',
	' ',
	'g'),
	LOWER(regexp_replace(TRIM(example),
	' +',
	' ',
	'g')),
FROM
	staging.sql_glossery;
	
SELECT
	*
FROM
	staging.sql_glossery
WHERE
	LOWER(description) LIKE '%select%';

SELECT
	*
FROM
	staging.sql_glossery
WHERE
	regexp_matches(LOWER(description),'select\b');