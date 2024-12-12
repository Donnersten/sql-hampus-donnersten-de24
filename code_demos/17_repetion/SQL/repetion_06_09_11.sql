CREATE SCHEMA IF NOT EXISTS sql;

SELECT * FROM information_schema.schemata

CREATE TABLE IF NOT EXISTS sql.exersises (
	study_week INT PRIMARY KEY,
	exercise TEXT,
	studied BOOLEAN
);

CREATE TABLE IF NOT EXISTS sql.lectures (
	study_week INT PRIMARY KEY,
	content TEXT,
	lectures TEXT,
	studied BOOLEAN
);

DESC;

INSERT INTO
    sql.lectures
VALUES
    (
        1,
        'intro, query, ingest csv, CLI, dbeaver, table, select',
        '00-04',
        TRUE
    ),
    (
        2,
        'filtering, CRUD, conditionals, sorting, functions, grouping',
        '05-08',
        TRUE
    ),
    (
        3,
        'grouping, strings, regexp, set operations, performing joins, querying multiple tables',
        '09-11',
        FALSE
    ),
    (
        4,
        'window functions, CTEs, connect duckdb to Python, data security, SQL injection',
        '12-14',
        FALSE
    ),
    (
        5,
        'duckdb tips and tricks, repetition',
        '15-16',
        TRUE
    ),
    (6, 'exam', '17', FALSE);


   INSERT INTO
    sql.exersises
VALUES
    (1, '0', TRUE),
    (2, '1', TRUE),
    (3, '2', TRUE),
    (4, '3', TRUE),
    (5, 'old exam', TRUE);
  
   
SELECT * FROM sql.lectures l ;
SELECT * FROM sql.exersises e ;

--Vill uppdatera WEEK 4,6 
SELECT * FROM sql.lectures l WHERE study_week IN (4,6);


UPDATE
	sql.lectures
SET
	studied = TRUE
WHERE
	study_week IN (4, 6);

--Söka efter matshande strängar men kännslig för stavning
SELECT
	*
FROM
	sql.lectures l
WHERE
	content LIKE '%strings%';

--Okännslig för stavning, ILIKE eller LOWRE(content) LIKE '%strings%'
SELECT
	*
FROM
	sql.lectures l
WHERE
	content ILIKE '%strings%';
	

--Join lectures och Exersises 
SELECT
	*
FROM
	sql.lectures l
LEFT JOIN sql.exersises e ON
	l.study_week = e.study_week;


SELECT
	l.study_week, l.content, l.lectures, e.exercise 
FROM
	sql.lectures l
LEFT JOIN sql.exersises e ON
	l.study_week = e.study_week;


SELECT
	*
FROM
	sql.lectures l
RIGHT JOIN sql.exersises e ON
	l.study_week = e.study_week;

SELECT
	*
FROM
	sql.lectures l
INNER JOIN sql.exersises e ON
	l.study_week = e.study_week;













































