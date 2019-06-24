CREATE TABLE departments (
    dept_no VARCHAR NOT NULL,
    dept_name VARCHAR NOT NULL,
    PRIMARY KEY (dept_no)
);

CREATE TABLE employees (
    employee_no INTEGER NOT NULL,
    birth_date VARCHAR NOT NULL,
    first_name VARCHAR NOT NULL,
    last_name VARCHAR NOT NULL,
	gender VARCHAR NOT NULL,
	hire_date VARCHAR NOT NULL,
    PRIMARY KEY (employee_no)
);

CREATE TABLE dept_employees (
    employment_period_id SERIAL,
    employee_no INTEGER NOT NULL,
    dept_no VARCHAR,
    dept_from_date VARCHAR,
    dept_to_date VARCHAR,
    PRIMARY KEY (employment_period_id),
    FOREIGN KEY (employee_no) REFERENCES employees(employee_no),
    FOREIGN KEY (dept_no) REFERENCES departments(dept_no)
);

CREATE TABLE dept_managers (
   	management_period_id SERIAL, 
    employee_no INTEGER NOT NULL,
    dept_no VARCHAR NOT NULL,
    mgr_from_date VARCHAR NOT NULL,
    mgr_to_date VARCHAR NOT NULL,
    PRIMARY KEY (management_period_id),
    FOREIGN KEY (employee_no) REFERENCES employees(employee_no),
    FOREIGN KEY (dept_no) REFERENCES departments(dept_no)
);

CREATE TABLE salaries (
    salary_period_id SERIAL,
    employee_no INTEGER NOT NULL,
    salary INTEGER NOT NULL,
	salary_from_date VARCHAR NOT NULL,
    salary_to_date VARCHAR NOT NULL,
    PRIMARY KEY (salary_period_id),
    FOREIGN KEY (employee_no) REFERENCES employees(employee_no)
);

CREATE TABLE titles (
    title_period_id SERIAL,
    employee_no INTEGER NOT NULL,
    title VARCHAR NOT NULL,
	title_from_date VARCHAR NOT NULL,
    title_to_date VARCHAR NOT NULL,
    PRIMARY KEY (title_period_id),
    FOREIGN KEY (employee_no) REFERENCES employees(employee_no)
);

