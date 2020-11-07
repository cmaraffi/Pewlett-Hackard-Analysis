--Creating tables for EmployeesDB
CREATE TABLE titles (
	emp_no titles NOT NULL,
	title int NOT NULL,
	from_date date NOT NULL,
	to_date date NOT NULL,
	PRIMARY KEY (emp_no)
);

select * FROM employees