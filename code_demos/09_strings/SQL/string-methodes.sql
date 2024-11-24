select * from staging.sql_glossery sg ;

-- arry slicing
select
	sql_word,
	sql_word[:2],
	sql_word[2:5]
from
	staging.sql_glossery sg ;

--getitems
select
	sql_word,
	sql_word[0],
	sql_word[1],
	sql_word[-1]
from
	staging.sql_glossery;
	
--Concatination
SELECT 'fun' || ' joke'

select
	'SQL command: ' || sql_word,
from
	staging.sql_glossery;

--Remove space and UPPER

SELECT
	UPPER(TRIM(sql_word)) AS trimmed_word,
	trimmed_word[1],
	trimmed_word[-1]
FROM
	staging.sql_glossery;
	

SELECT
	replace(TRIM(description),
	'  ',
	'')
FROM
	staging.sql_glossery;

