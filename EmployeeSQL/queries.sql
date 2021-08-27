--Queries

--1.List employee number, last name, first name, sex, and salary for each employee
---join employees and salaries
SELECT e.emp_no, e.last_name, e.first_name, e.sex, s.salary
FROM salaries as s
INNER JOIN employees as e ON
e.emp_no=s.emp_no;

--2.List first name, last name, and hire date for employees who were hired in 1986.
SELECT e.first_name, e.last_name, e.hire_date
From employees as e
WHERE hire_date >= '1/1/1986' AND hire_date <= '12/31/1986';


--3.List the manager of each department with the following information: department number, 
---department name, the manager’s employee number, last name, first name.
----join departments, dep_mgr and employees
CREATE VIEW dept_mgr AS
SELECT d.dept_no, d.dept_name, e.emp_no, e.last_name, e.first_name
FROM departments AS d
JOIN dept_manager AS m
ON (d.dept_no = m.dept_no)
  JOIN employees AS e
  ON (e.emp_no = m.emp_no);
  
--4.List the department of each employee with the following information: 
---employee number, last name, first name, and department name.
----join departments, dept_emp, and employees
SELECT e.emp_no, e.last_name, e.first_name, d.dept_name
FROM departments AS d
JOIN dept_emp AS m
ON (d.dept_no = m.dept_no)
  JOIN employees AS e
  ON (e.emp_no = m.emp_no);
  
--5.List first name, last name, and sex for employees whose first name 
---is “Hercules” and last names begin with “B.”
Select e.first_name, e.last_name, e.sex
FROM employees as e
WHERE e.first_name = 'Hercules' AND e.last_name LIKE 'B%';

--6.List all employees in the Sales department, including their 
---employee number, last name, first name, and department name.
----join employees, dept_emp and departments
SELECT e.emp_no, e.last_name, e.first_name, d.dept_name
FROM departments AS d
JOIN dept_emp AS m
ON (d.dept_no = m.dept_no)
  JOIN employees AS e
  ON (e.emp_no = m.emp_no)
  WHERE d.dept_name = 'Sales';
  
--7.List all employees in the Sales and Development departments, 
---including their employee number, last name, first name, and department name.
----join employees, dept_emp and departments
SELECT e.emp_no, e.last_name, e.first_name, d.dept_name
FROM departments AS d
JOIN dept_emp AS m
ON (d.dept_no = m.dept_no)
  JOIN employees AS e
  ON (e.emp_no = m.emp_no)
  WHERE d.dept_name = 'Sales' OR d.dept_name = 'Development';
  
--8.In descending order, list the frequency count of 
---employee last names, i.e., how many employees share each last name.
SELECT last_name, Count(last_name) from employees
Group by last_name
ORDER BY "count" DESC;
  