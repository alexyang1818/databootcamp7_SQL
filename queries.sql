-- querying the database
SELECT * FROM departments;
SELECT * FROM dept_manager;

-- drop a table
-- DROP TABLE employees CASCADE;  -- removes the connections to other tables in the database.

-- retirement eligibility
SELECT	first_name, last_name
FROM 	employees
WHERE 	(birth_date BETWEEN '1952-01-01' AND '1955-12-31')
AND (hire_date BETWEEN '1985-01-01' AND '1988-12-31');

-- number of employees retiring
SELECT	COUNT(first_name)
FROM 	employees
WHERE 	(birth_date BETWEEN '1952-01-01' AND '1955-12-31')
AND (hire_date BETWEEN '1985-01-01' AND '1988-12-31');

-- create new table of employees retiring
SELECT	first_name, last_name
INTO	retirement_info
FROM 	employees
WHERE 	(birth_date BETWEEN '1952-01-01' AND '1955-12-31')
AND (hire_date BETWEEN '1985-01-01' AND '1988-12-31');

-- SELECT * FROM retirement_info

