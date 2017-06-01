SELECT
  emp_no,
  first_name,
  last_name
FROM employees
WHERE first_name = 'Irena'
      OR first_name = 'Vidya'
      OR first_name = 'Maya'
ORDER BY first_name ASC;


SELECT
  emp_no,
  first_name,
  last_name
FROM employees
WHERE (first_name = 'Irena'
       OR first_name = 'Vidya'
       OR first_name = 'Maya')
      AND gender = 'M';


SELECT
  emp_no,
  first_name,
  last_name
FROM employees
WHERE last_name LIKE 'E%'
      AND last_name LIKE '%E';

SELECT
  emp_no,
  first_name,
  last_name,
  hire_date
FROM employees
WHERE hire_date BETWEEN '1990-01-01' AND '1999-12-31'
      AND birth_date LIKE '%12-25';


SELECT
  emp_no,
  first_name,
  last_name
FROM employees
WHERE last_name LIKE '%q%'
      AND NOT '%qu%';