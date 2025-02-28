--Create the schema for the tables
--Assign primary and foreign keys

DROP TABLE departments;

CREATE TABLE departments (
	dept_no VARCHAR(4) NOT NULL PRIMARY KEY,
	dept_name VARCHAR NOT NULL
);

SELECT * FROM departments;

----------------------------------------------------------
DROP TABLE titles;

CREATE TABLE titles (
	title_id VARCHAR (10) NOT NULL PRIMARY KEY,
	title VARCHAR NOT NULL
);

SELECT * FROM titles;

----------------------------------------------------------
DROP TABLE employees;

CREATE TABLE employees (
	emp_no INT NOT NULL PRIMARY KEY,
	emp_title_id VARCHAR (5) NOT NULL,
	birth_date DATE NOT NULL,
	first_name VARCHAR NOT NULL,
	last_name VARCHAR NOT NULL,
	sex VARCHAR (1) NOT NULL,
	hire_date DATE NOT NULL,
	FOREIGN KEY (emp_title_id) REFERENCES titles(title_id)
);

SELECT * FROM employees;

----------------------------------------------------------
DROP TABLE dept_emp; 

CREATE TABLE dept_emp (
	emp_no INT NOT NULL,
	dept_no VARCHAR (5),
	FOREIGN KEY (emp_no) REFERENCES employees (emp_no),
	FOREIGN KEY (dept_no) REFERENCES departments (dept_no)
);

SELECT * FROM dept_emp;

----------------------------------------------------------
DROP TABLE dept_manager;

CREATE TABLE dept_manager (
	dept_no VARCHAR NOT NULL,
	emp_no INT,
	FOREIGN KEY (dept_no) REFERENCES departments (dept_no),
	FOREIGN KEY (emp_no) REFERENCES employees (emp_no)
);

SELECT * FROM dept_manager;

----------------------------------------------------------
DROP TABLE salaries;

CREATE TABLE salaries (
	emp_no INT NOT NULL,
	salary INT,
	FOREIGN KEY (emp_no) REFERENCES employees (emp_no)
);

SELECT * FROM salaries;
