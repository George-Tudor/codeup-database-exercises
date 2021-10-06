use employees;

SELECT * FROM employees
WHERE gender = 'f'
ORDER BY hire_date DESC
LIMIT 10;

SELECT COUNT(*), title FROM titles
GROUP BY title
ORDER BY COUNT(*) DESC
LIMIT 3;

SELECT title, from_date FROM titles
WHERE






