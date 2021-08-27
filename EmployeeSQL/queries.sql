--Queries

--List employee number, last name, first name, sex, and salary for each employee
---join employees and salaries
SELECT e.emp_no, e.last_name, e.first_name, e.sex, s.salary
FROM salaries as s
INNER JOIN employees as e ON
e.emp_no=s.emp_no;

--List first name, last name, and hire date for employees who were hired in 1986.
SELECT e.first_name, e.last_name, e.hire_date
From employees as e
WHERE hire_date >= '1/1/1986' AND hire_date <= '12/31/1986';


--List the manager of each department with the following information: department number, 
---department name, the manager’s employee number, last name, first name.
----join departments, dep_mgr and employees
CREATE VIEW dept_mgr AS
SELECT d.dept_no, d.dept_name, e.emp_no, e.last_name, e.first_name
FROM departments AS d
JOIN dept_manager AS m
ON (d.dept_no = m.dept_no)
  JOIN employees AS e
  ON (e.emp_no = m.emp_no);
  
--List the department of each employee with the following information: 
---employee number, last name, first name, and department name.
----join departments, dept_emp, and employees
SELECT e.emp_no, e.last_name, e.first_name, d.dept_name
FROM departments AS d
JOIN dept_emp AS m
ON (d.dept_no = m.dept_no)
  JOIN employees AS e
  ON (e.emp_no = m.emp_no);