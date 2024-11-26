
--A
SELECT FLOOR(RANDOM()*6+1) AS dice FROM generate_series(1,10);

--B
WITH DiceRolls AS (
    SELECT FLOOR(RANDOM() * 6 + 1) AS dice
    FROM generate_series(1, 10)
)
SELECT
    AVG(CASE WHEN dice = 6 THEN 1 ELSE 0 END)*100 AS average_six
FROM DiceRolls;

--C

WITH DiceRolls AS (
    SELECT FLOOR(RANDOM() * 6 + 1) AS dice
    FROM generate_series(1, 100)
)
SELECT
    AVG(CASE WHEN dice = 6 THEN 1 ELSE 0 END)*100 AS average_six
    FROM DiceRolls;
--D, 
--1 000
WITH DiceRolls AS (
    SELECT FLOOR(RANDOM() * 6 + 1) AS dice
    FROM generate_series(1, 1000)
)
SELECT
    AVG(CASE WHEN dice = 6 THEN 1 ELSE 0 END)*100 AS average_six
FROM DiceRolls;
--10 000
WITH DiceRolls AS (
    SELECT FLOOR(RANDOM() * 6 + 1) AS dice
    FROM generate_series(1, 10000)
)
SELECT
    AVG(CASE WHEN dice = 6 THEN 1 ELSE 0 END)*100 AS average_six
	FROM DiceRolls;
--100 000
WITH DiceRolls AS (
    SELECT FLOOR(RANDOM() * 6 + 1) AS dice
    FROM generate_series(1, 100000)
)
SELECT
    AVG(CASE WHEN dice = 6 THEN 1 ELSE 0 END)*100 AS average_six
    FROM DiceRolls;
 