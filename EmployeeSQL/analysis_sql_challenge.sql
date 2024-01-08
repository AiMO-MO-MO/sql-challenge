
SELECT e.emp_no, e.last_name, e.first_name, e.sex, s.salary
FROM employees as e
JOIN salaries as s ON e.emp_no = s.emp_no;


SELECT first_name, last_name, hire_date
FROM employees
WHERE EXTRACT(YEAR FROM hire_date) = 1986;


SELECT dm.dept_no, d.dept_name, dm.emp_no, e.last_name, e.first_name
FROM dept_manager AS dm
JOIN department AS d ON dm.dept_no = d.dept_no
JOIN employees AS e ON dm.emp_no = e.emp_no;


SELECT dm.dept_no, e.emp_no, e.last_name, e.first_name, d.dept_name
FROM dept_manager as dm 
JOIN department AS d ON dm.dept_no = d.dept_no
JOIN employees AS e ON dm.emp_no = e.emp_no;

SELECT first_name, last_name, sex
FROM employees
WHERE first_name = 'Hercules' AND last_name LIKE 'B%';
	
SELECT de.emp_no, e.last_name, e.first_name, d.dept_name
FROM dept_emp AS de
JOIN employees AS e ON de.emp_no = e.emp_no
JOIN department AS d ON de.dept_no = d.dept_no
WHERE d.dept_name = 'Sales';
	
SELECT de.emp_no, e.last_name, e.first_name, d.dept_name
FROM dept_emp AS de
JOIN employees AS e ON de.emp_no = e.emp_no
JOIN department AS d ON de.dept_no = d.dept_no
WHERE d.dept_name IN ('Sales', 'Development');	

SELECT last_name, COUNT(last_name) AS lnc
FROM employees
GROUP BY last_name 
ORDER BY lnc DESC;

	