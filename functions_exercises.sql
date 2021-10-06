use employees;

SELECT CONCAT(
               first_name,
               ' ',
               last_name
           ) AS 'Employee Name' FROM employees WHERE last_name LIKE 'e%e';

SELECT *
FROM employees
WHERE month(birth_date) = 12
  AND day(birth_date) = 25;

SELECT *
FROM employees
WHERE MONTH(birth_date) = 12
  AND DAY(birth_date) = 25
    AND YEAR(hire_date) BETWEEN 1990 AND 2000;

SELECT *
FROM employees
WHERE MONTH(birth_date) = 12
  AND DAY(birth_date) = 25
  AND YEAR(hire_date) BETWEEN 1990 AND 2000
  AND CURDATE() - birth_date ORDER BY hire_date DESC;

SELECT first_name, last_name, birth_date, hire_date, DATEDIFF(NOW(), hire_date) AS 'Total days worked'
FROM employees
WHERE MONTH(birth_date) = 12
  AND DAY(birth_date) = 25
  AND YEAR(hire_date) BETWEEN 1990 AND 2000
ORDER BY DATEDIFF(NOW(), hire_date) DESC;













