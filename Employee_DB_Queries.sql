-- Question 1: List the following details of each employee: employee number, last name, first name, gender, and salary.

SELECT employees.employee_no,
	employees.last_name,
	employees.first_name,
	employees.gender,
	salaries.salary
FROM employees
JOIN salaries ON
employees.employee_no = salaries.employee_no;

-- Question 2: List employees who were hired in 1986.

SELECT employee_no,last_name,first_name,hire_date 
FROM employees
WHERE hire_date
LIKE '1986%';

-- Question 3: List the manager of each department with the following information: department number, department name, the manager's employee number, last name, first name, and start and end employment dates.

SELECT dept_managers.dept_no,
	departments.dept_name,
	employees.employee_no,
	employees.last_name,
	employees.first_name,
	dept_managers.mgr_to_date,
	dept_managers.mgr_from_date
FROM dept_managers
JOIN employees ON 
dept_managers.employee_no = employees.employee_no
JOIN departments ON
dept_managers.dept_no = departments.dept_no;

-- Question 4: List the department of each employee with the following information: employee number, last name, first name, and department name.

SELECT dept_employees.employee_no,
	employees.last_name,
	employees.first_name,
	departments.dept_name
FROM dept_employees
JOIN employees ON
dept_employees.employee_no = employees.employee_no
JOIN departments ON
dept_employees.dept_no = departments.dept_no;

-- Question 5: List all employees whose first name is "Hercules" and last names begin with "B."

SELECT last_name,first_name
FROM employees
WHERE first_name = 'Hercules' 
AND last_name 
LIKE 'B%';

-- Question 6: List all employees in the Sales department, including their employee number, last name, first name, and department name.

SELECT dept_employees.employee_no,
	employees.last_name,
	employees.first_name,
	departments.dept_name
FROM dept_employees
JOIN employees ON
dept_employees.employee_no = employees.employee_no
JOIN departments ON
dept_employees.dept_no = departments.dept_no
WHERE departments.dept_name = 'Sales';

-- Question 7:List all employees in the Sales and Development departments, including their employee number, last name, first name, and department name.

SELECT dept_employees.employee_no,
	employees.last_name,
	employees.first_name,
	departments.dept_name
FROM dept_employees
JOIN employees ON
dept_employees.employee_no = employees.employee_no
JOIN departments ON
dept_employees.dept_no = departments.dept_no
WHERE departments.dept_name = 'Sales'
OR departments.dept_name = 'Development';

-- Question 8: In descending order, list the frequency count of employee last names, i.e., how many employees share each last name.

SELECT last_name, COUNT(last_name) AS "last_name_count"
FROM employees
GROUP BY last_name
ORDER BY "last_name_count" DESC;

