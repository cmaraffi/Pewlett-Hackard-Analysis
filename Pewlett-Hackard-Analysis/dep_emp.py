CREATE TABLE dep_emp (
  dept_no varchar NOT NULL,
  emp_no INT NOT NULL,
  from_date DATE NOT NULL,
  to_date DATE NOT NULL,
  PRIMARY KEY (emp_no)
);

Select * from dep_emp;