--Question 1
SELECT "Employees".emp_no, 
	"Employees".last_name,
	"Employees".first_name,
	"Employees".sex,
	"Salaries".salary
FROM "Employees" JOIN "Salaries"
ON "Employees".emp_no = "Salaries".emp_no;

--Question 2
SELECT first_name, last_name, hire_date
FROM "Employees"
WHERE hire_date >= '01/01/1986'
AND hire_date < '01/01/1987';

--Question 3
SELECT
	"Departments".dept_no,
	"Departments".dept_name,
	"Dept_Manager".emp_no,
	"Employees".last_name,
	"Employees".first_name
FROM "Departments" JOIN "Dept_Manager"
	ON "Departments".dept_no = "Dept_Manager".dept_no
	JOIN "Employees"
		ON "Dept_Manager".emp_no = "Employees".emp_no;

--Question 4
SELECT
	"Employees".emp_no, 
	"Employees".last_name,
	"Employees".first_name,
	"Departments".dept_name
FROM "Employees" JOIN "Dept_Emp"
	ON "Employees".emp_no = "Dept_Emp".emp_no
	JOIN "Departments"
		ON "Dept_Emp".dept_no = "Departments".dept_no;
		
--Question 5
SELECT first_name, last_name, sex
FROM "Employees"
WHERE first_name = 'Hercules'
AND last_name LIKE 'B%';

--Question 6
SELECT
	"Employees".emp_no, 
	"Employees".last_name,
	"Employees".first_name,
	"Departments".dept_name
FROM "Departments" JOIN "Dept_Emp"
	ON "Departments".dept_no = "Dept_Emp".dept_no
	JOIN "Employees"
		ON "Dept_Emp".emp_no = "Employees".emp_no
WHERE "Departments".dept_name = 'Sales';

--Question 7
SELECT
	"Employees".emp_no, 
	"Employees".last_name,
	"Employees".first_name,
	"Departments".dept_name
FROM "Departments" JOIN "Dept_Emp"
	ON "Departments".dept_no = "Dept_Emp".dept_no
	JOIN "Employees"
		ON "Dept_Emp".emp_no = "Employees".emp_no
WHERE "Departments".dept_name = 'Sales'
OR "Departments".dept_name = 'Development';

--Question 8
SELECT last_name, COUNT(*) AS "Number of Last Name"
FROM "Employees"
GROUP BY last_name
ORDER BY COUNT(*) DESC;