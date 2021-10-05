USE employees;

SELECT * FROM employees
WHERE first_name IN ('Irena', 'Vidya', 'Maya');

SELECT * FROM employees
WHERE last_name LIKE 'e%';

SELECT * FROM employees
WHERE last_name LIKE '%q%';

SELECT * FROM employees
WHERE first_name LIKE 'Irena'
    OR first_name LIKE 'Vidya'
    OR first_name LIKE 'Maya';

SELECT * FROM employees
WHERE gender = 'm' AND (first_name LIKE 'Irena'
   OR first_name LIKE 'Vidya'
   OR first_name LIKE 'Maya');

SELECT * FROM employees
WHERE last_name LIKE 'e%' OR last_name LIKE '%e';

SELECT * FROM employees
WHERE last_name LIKE 'e%e';

SELECT * FROM employees
WHERE last_name LIKE '%q%'
  AND last_name NOT LIKE '%qu%';




