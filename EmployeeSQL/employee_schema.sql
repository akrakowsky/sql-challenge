--Employee schema
CREATE TABLE employees(
  emp_no INTEGER PRIMARY KEY,
  emp_title VARCHAR(100),
  birth_date DATE,
  first_name VARCHAR(30),
  last_name VARCHAR(30),
  sex VARCHAR(10),
  hire_date DATE
);

--import employees csv
Select * from employees;

--Salaries schema
CREATE TABLE salaries(
  emp_no INTEGER,
  FOREIGN KEY (emp_no) REFERENCES employees(emp_no),
  salary INTEGER
);

--import salaries csv
Select * from salaries;

--Department employee schema
CREATE TABLE dept_emp(
  emp_no INTEGER,
  FOREIGN KEY (emp_no) REFERENCES employees(emp_no),
  dept_no VARCHAR(20),
  FOREIGN KEY (dept_no) REFERENCES departments(dept_no)
);

--import dept_emp csv
Select * from dept_emp;

--Department manager schema
CREATE TABLE dept_manager(
  dept_no VARCHAR(20),
  FOREIGN KEY (dept_no) REFERENCES departments(dept_no),
  emp_no INTEGER,
  FOREIGN KEY (emp_no) REFERENCES employees(emp_no)
);

--import dept_manager csv
Select * from dept_manager;

--Departments schema
CREATE TABLE departments(
  dept_no VARCHAR(20) PRIMARY KEY,
  dept_name VARCHAR(50)
);

--import departments csv
Select * from departments;

--Titles schema
CREATE TABLE titles(
  title_id VARCHAR(20),
  titles VARCHAR(100)
);

--import titles csv
Select * from titles;
