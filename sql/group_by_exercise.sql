SELECT DISTINCT title
FROM titles;

SELECT DISTINCT title
FROM titles
GROUP BY title ASC;


SELECT last_name
FROM employees
WHERE last_name LIKE 'E%'
      AND last_name LIKE '%E';


SELECT last_name, first_name
FROM employees
WHERE last_name LIKE 'E%'
      AND last_name LIKE '%E'
GROUP BY last_name;


SELECT
  first_name,
  last_name
FROM employees
WHERE last_name LIKE 'E%'
      AND last_name LIKE '%E'
GROUP BY first_name, last_name;


SELECT last_name
FROM employees
WHERE last_name LIKE '%q%'
      AND last_name NOT LIKE '%qu%'
GROUP BY last_name;


SELECT
  emp_no,
  first_name,
  last_name
FROM employees
WHERE first_name = 'Irena'
      OR first_name = 'Vidya'
      OR first_name = 'Maya';





