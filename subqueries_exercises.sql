USE employees;

SELECT from_date FROM dept_emp WHERE emp_no = '101010';

SELECT  emp_no, CONCAT(first_name, ' ', last_name), hire_date
FROM employees
WHERE hire_date IN (
    SELECT hire_date
    FROM employees
    WHERE emp_no = '101010'
    );

SELECT title
FROM titles
WHERE





