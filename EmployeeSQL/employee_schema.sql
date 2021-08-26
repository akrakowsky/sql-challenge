--Employee schema
CREATE TABLE employees(
  emp_no INTEGER PRIMARY KEY,
  emp_title VARCHAR,
  birth_date DATE,
  first_name VARCHAR,
  last_name VARCHAR,
  sex VARCHAR,
  hire_date DATE
);

--import employees csv
Select * from employees;

--Salaries schema
CREATE TABLE salaries(
  emp_no INTEGER,
  FOREIGN KEY (emp_id) REFERENCES employees(emp_id),
  salary INTEGER
);

--import salaries csv
Select * from salaries;

--Department employee schema
CREATE TABLE dept_emp(
  emp_no INTEGER,
  FOREIGN KEY (emp_id) REFERENCES employees(emp_id),
  dept_no VARCHAR,
  FOREIGN KEY (dept_no) REFERENCES departments(dept_no)
);

--import dept_emp csv
Select * from dept_emp;

--Department manager schema
CREATE TABLE dept_manager(
  emp_no INTEGER,
  FOREIGN KEY (emp_id) REFERENCES employees(emp_id),
  dept_no VARCHAR,
  FOREIGN KEY (dept_no) REFERENCES departments(dept_no)
);

--import dept_manager csv
Select * from dept_manager;

--Departments schema
CREATE TABLE departments(
  dept_no VARCHAR PRIMARY KEY,
  dept_name VARCHAR
);

--import departments csv
Select * from departments;

--Titles schema
CREATE TABLE titles(
  title_id VARCHAR,
  FOREIGN KEY (title_id) REFERENCES employees(emp_title),
  titles VARCHAR
);

--import titles csv
Select * from titles;