USE employees;

# Find all the employees with the same hire date as employee 101010 using a sub-query.

SELECT
  first_name,
  last_name,
  emp_no,
  hire_date
FROM employees
WHERE hire_date IN (
  SELECT hire_date
  FROM employees
  WHERE emp_no = 101010
);

# Find all the titles held by all employees with the first name Aamod.


SELECT title
FROM titles
WHERE emp_no IN (
  SELECT emp_no
  FROM employees
  WHERE first_name = 'Aamod'
);

# Find all the department managers that are female.


SELECT *
FROM employees
WHERE gender = 'F'
      AND emp_no IN (SELECT emp_no
                     FROM dept_manager
                     WHERE to_date > now());

# BONUS Find all the department names that have female managers.


SELECT *
FROM departments
WHERE dept_no IN (
  SELECT dept_no
  FROM dept_manager
  WHERE emp_no IN (
    SELECT emp_no
    FROM employees
    WHERE gender = 'F'
  )
);

