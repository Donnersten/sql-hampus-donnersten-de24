CREATE SCHEMA IF NOT EXISTS staging;

CREATE TABLE IF NOT EXISTS staging.sql_glossery AS (
    SELECT * FROM read_CSV_auto('Data/sql_terms.csv')
);