SELECT
  count(*),
  gender
FROM employees
WHERE first_name = 'Irena'
      OR first_name = 'Vidya'
      OR first_name = 'Maya'
GROUP BY gender;


SELECT
  emp_no,
  first_name,
  last_name
FROM employees
WHERE (first_name = 'Irena'
       OR first_name = 'Vidya'
       OR first_name = 'Maya')
      AND gender = 'M';


SELECT concat(first_name, ' ', last_name)
FROM employees
WHERE last_name LIKE 'E%'
      AND last_name LIKE '%E'
ORDER BY emp_no DESC;


SELECT
  concat(datediff(curdate(), hire_date), ' days since hired') from_hire,
  first_name,
  last_name,
  hire_date,
  birth_date
FROM employees
WHERE hire_date BETWEEN '1990-01-01' AND '1999-12-31'
      AND birth_date LIKE '%12-25'
ORDER BY birth_date ASC, hire_date DESC;


SELECT count(*),
  first_name,
  last_name
FROM employees
WHERE last_name LIKE '%q%'
      AND NOT '%qu%'
GROUP BY last_name, first_name
ORDER BY count(*) DESC;





