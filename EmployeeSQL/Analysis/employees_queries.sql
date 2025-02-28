-- List the employee number, last name, first name, sex, and salary of each employee.
--Employee's(emp_no, last_name, first_name, sex salary)
SELECT e.emp_no, e.last_name, e.first_name, e.sex, s.salary FROM employees AS e
JOIN salaries AS s
ON e.emp_no = s.emp_no;


--List the first name, last name, and hire date for the employees who were hired in 1986.
--Employees hired 1986 (first_name, last_name, hire_date)
SELECT first_name, last_name, hire_date FROM employees
WHERE hire_date BETWEEN '1986-1-1' and '1986-12-31'
ORDER BY hire_date;


--List the manager of each department along with their department number, department name, employee number, last name, and first name.
--Manager (dept_no, dept_name, emp_no,lat_name, fist_name)
SELECT dm.dept_no, d.dept_name, dm.emp_no, e.last_name, e.first_name FROM dept_manager AS dm
JOIN employees AS e
ON dm.emp_no = e.emp_no
JOIN departments AS d
ON dm.dept_no = d.dept_no
ORDER BY d.dept_no;

--List the department number for each employee along with that employee’s employee number, last name, first name, and department name.
--Department number ( emp_no, last_name, first_name, dept_name)
SELECT d.dept_no, e.emp_no, e.last_name, e.first_name, d.dept_name 
FROM employees AS e
JOIN dept_emp AS de
ON e.emp_no = de.emp_no
JOIN departments AS d
ON d.dept_no = de.dept_no
ORDER BY d.dept_name;

--List first name, last name, and sex of each employee whose first name is Hercules and whose last name begins with the letter B.
--Name "Hercules B" (first_name, last_name, sex)
SELECT first_name, last_name, sex FROM employees
WHERE first_name= 'Hercules' and  last_name LIKE 'B%';

--	List each employee in the Sales department, including their employee number, last name, and first name.
--Employees in sales department (emp_no, last_name, first_name, dept_name)
SELECT d.dept_name, e.emp_no, e.last_name, e.first_name FROM employees as e
JOIN dept_emp AS de
ON e.emp_no = de.emp_no
JOIN departments AS d
ON d.dept_no = de.dept_no
WHERE d.dept_name = 'Sales';

--List each employee in the Sales and Development departments, including their employee number, last name, first name, and department name.
--Employees in Sale and Development departments (emp_no, last_name, first_name, deptz_no)
SELECT d.dept_name, e.emp_no, e.last_name, e.first_name FROM employees as e
JOIN dept_emp AS de
ON e.emp_no = de.emp_no
JOIN departments AS d
ON d.dept_no = de.dept_no
WHERE d.dept_name = 'Sales' OR d.dept_name = 'Development'
ORDER BY d.dept_name;

--List the frequency counts, in descending order, of all the employee last names (that is, how many employees share each last name).
--Count of common last name frequency counts
SELECT last_name, count(emp_no) as same_last_name_count
FROM employees
GROUP BY last_name
ORDER BY same_last_name_count DESC;


