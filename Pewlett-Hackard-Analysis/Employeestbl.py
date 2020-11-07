-- Creating tables for PH-Employees
Create Table employees (
	 emp_no INT Not Null,
	 birth_date date Not Null,
	 first_name varchar Not Null,
	 last_name varchar Not Null,
	 gender varchar Not Null,
	 hire_date date Not Null,
	 Primary Key (emp_no)
);