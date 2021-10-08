USE employees;

# SELECT CONCAT(e.first_name, ' ', e.last_name) AS full_name, d.dept_name
# FROM employees as e
#          JOIN dept_emp as de
#               ON de.emp_no = e.emp_no
#          JOIN departments as d
#               ON d.dept_no = de.dept_no
# WHERE de.to_date = '9999-01-01' AND e.emp_no = 10001;

#Rephrase the question in terms of the tables and columns in your database

#2 Using the example in the Associative Table Joins section as a guide, write a query that shows each department along with the name of the current manager for that department.

SELECT dept_name AS 'Department Name',
       CONCAT(first_name, ' ', last_name)
           AS 'Department Manager'
FROM departments d JOIN dept_manager dm ON d.dept_no = dm.dept_no
    JOIN employees e ON dm.emp_no = e.emp_no WHERE to_date >= NOW()
ORDER BY dept_name;

SELECT * FROM dept_manager;

#Find the name of all departments currently managed by women.
SELECT dept_name AS 'Department Name',CONCAT(first_name, ' ', last_name) AS 'Department Manager'
FROM departments d JOIN dept_manager dm
ON d.dept_no = dm.dept_no
JOIN employees e ON dm.emp_no = e.emp_no
WHERE dm.to_date >= NOW() AND e.gender = 'f'
ORDER BY d.dept_name;

#Find the current titles of employees currently working in the Customer Service department.

# Start by getting all the titles for everyone in Customer Service:
SELECT title
FROM titles t JOIN dept_emp de ON t.emp_no = de.emp_no
JOIN departments d ON de.dept_no = d.dept_no
WHERE d.dept_name = 'Customer Service';

# Next, clump the titles together. I can use GROUP BY (with DISTINCT I won't be able to use COUNT later on.

SELECT title
FROM titles t JOIN dept_emp de ON t.emp_no = de.emp_no
              JOIN departments d ON de.dept_no = d.dept_no
WHERE d.dept_name = 'Customer Service'
GROUP BY t.title;

#Now I get the count of how many people have had those titles.  This would not work had i chosen to use DISTINCT

SELECT title, COUNT(title)
FROM titles t JOIN dept_emp de ON t.emp_no = de.emp_no
              JOIN departments d ON de.dept_no = d.dept_no
WHERE d.dept_name = 'Customer Service'
GROUP BY t.title;

#Now limit it to current title-holders

SELECT title, COUNT(title)
FROM titles t JOIN dept_emp de ON t.emp_no = de.emp_no
              JOIN departments d ON de.dept_no = d.dept_no
WHERE d.dept_name = 'Customer Service'
    AND t.to_date = '9999-01-01'
GROUP BY t.title;

#3 Still too many query results, probably because not all these people are current employees of Customer Service. Narrow it down some more.

SELECT title, COUNT(title)
FROM titles t JOIN dept_emp de ON t.emp_no = de.emp_no
              JOIN departments d ON de.dept_no = d.dept_no
WHERE d.dept_name = 'Customer Service'
  AND t.to_date = '9999-01-01'
AND de.to_date = '9999-01-01'
GROUP BY t.title;

#4 Find the current salary of all current managers.

SELECT dept_name AS 'Department Name',
       CONCAT(first_name, ' ', last_name)
AS 'Department Manager', salary AS 'Salary'
FROM departments d JOIN dept_manager dm ON d.dept_no = dm.dept_no
JOIN salaries s ON dm.emp_no = s.emp_no
JOIN employees e ON dm.emp_no = e.emp_no WHERE dm.to_date >= NOW() AND s.to_date >= NOW()
ORDER BY dept_name;

#BONUS
SELECT CONCAT(first_name, ' ', last_name)
FROM employees e JOIN dept_emp de on e.emp_no
WHERE de.to_date LIKE '9%';




