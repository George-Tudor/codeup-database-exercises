

CREATE TABLE IF NOT EXISTS countries(
    country_id VARCHAR(2),
    country_name VARCHAR(40),
    region_id DECIMAL(10,0)
);

SHOW TABLES;

DESCRIBE countries;

CREATE TABLE dup_countries AS SELECT * FROM countries;
SHOW TABLES;
DESCRIBE dup_countries;

DROP TABLE dup_countries;

CREATE TABLE IF NOT EXISTS dup_countries
LIKE countries;

DESC dup_countries;

DROP TABLE dup_countries;

CREATE TABLE IF NOT EXISTS dup_countries
AS SELECT * FROM countries;

desc dup_countries;

DROP TABLE countries;
drop table dup_countries;

SHOW DATABASES;
USE hr_db;

SELECT FIRST_NAME 'First Name', LAST_NAME 'Last Name' from employees;

