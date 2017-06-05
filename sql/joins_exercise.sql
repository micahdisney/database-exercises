# CREATE DATABASE join_test_db;
#
# CREATE TABLE roles (
#   id   INT UNSIGNED NOT NULL AUTO_INCREMENT,
#   name VARCHAR(100) NOT NULL,
#   PRIMARY KEY (id)
# );
#
# CREATE TABLE users (
#   id      INT UNSIGNED NOT NULL AUTO_INCREMENT,
#   name    VARCHAR(100) NOT NULL,
#   email   VARCHAR(100) NOT NULL,
#   role_id INT UNSIGNED          DEFAULT NULL,
#   PRIMARY KEY (id),
#   FOREIGN KEY (role_id) REFERENCES roles (id)
# );
#
# INSERT INTO roles (name) VALUES ('admin');
# INSERT INTO roles (name) VALUES ('author');
# INSERT INTO roles (name) VALUES ('reviewer');
# INSERT INTO roles (name) VALUES ('commenter');
#
# INSERT INTO users (name, email, role_id) VALUES
#   ('bob', 'bob@example.com', 1),
#   ('joe', 'joe@example.com', 2),
#   ('sally', 'sally@example.com', 3),
#   ('adam', 'adam@example.com', 3),
#   ('jane', 'jane@example.com', NULL),
#   ('mike', 'mike@example.com', NULL);
#
# INSERT INTO users (name, email, role_id)
# VALUES ('kevin', 'kevin@example.com', 2),
#   ('peter', 'peter@example.com', 2),
#   ('lisa', 'lisa@example.com', 2),
#   ('carlos', 'carlos@example.com', NULL);
#
#
# SELECT *
# FROM users
# ORDER BY role_id DESC;
#
# SELECT *
# FROM roles;
#
# SELECT
#   users.name AS user_name,
#   roles.name AS role_name
# FROM users
#   JOIN roles ON users.role_id = roles.id;
#
# SELECT
#   users.name AS user_name,
#   roles.name AS role_name
# FROM users
#   LEFT JOIN roles ON users.role_id = roles.id;
#
# SELECT
#   users.name AS user_name,
#   roles.name AS role_name
# FROM users
#   RIGHT JOIN roles ON users.role_id = roles.id;

USE employees;

SELECT
  d.dept_name                            AS 'Department Name',
  concat(e.first_name, ' ', e.last_name) AS 'Department Manager'
FROM departments AS d
  JOIN dept_emp AS de ON d.dept_no = de.dept_no
  JOIN employees AS e ON e.emp_no = de.emp_no
  JOIN dept_manager AS dm ON e.emp_no = dm.emp_no
WHERE dm.to_date > now()
ORDER BY d.dept_name;



SELECT
  d.dept_name                            AS 'Department Name',
  concat(e.first_name, ' ', e.last_name) AS 'Manager Name'
FROM departments d
  JOIN dept_manager dm ON d.dept_no = dm.dept_no
  JOIN employees e ON dm.emp_no = e.emp_no
WHERE dm.to_date > now()
      AND e.gender = 'F'
ORDER BY d.dept_name;



SELECT DISTINCT
  t.title  AS "Title",
  count(*) AS 'Count'
FROM titles AS t
  JOIN employees AS e ON t.emp_no = e.emp_no
  JOIN dept_emp AS de ON e.emp_no = de.emp_no
  JOIN departments AS d ON de.dept_no = d.dept_no
WHERE t.to_date > now()
      AND de.to_date > now()
      AND d.dept_name = 'Customer Service'
GROUP BY t.title;



SELECT
  d.dept_name                            AS 'Department Name',
  concat(e.first_name, ' ', e.last_name) AS 'Manager Name',
  d.dept_name                            AS 'Department Name'
FROM salaries AS s
  JOIN employees AS e ON s.emp_no = e.emp_no
  JOIN dept_manager AS dm ON e.emp_no = dm.emp_no
  JOIN departments AS d ON dm.dept_no = d.dept_no
WHERE s.to_date > now()
      AND dm.to_date > now()
ORDER BY d.dept_name;


