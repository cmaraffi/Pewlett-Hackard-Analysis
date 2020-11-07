--Making a table for our dept_emp.csv
CREATE TABLE dep_emp (
    emp_no INT NOT NULL,
    dept_no varchar NOT NULL,
    from_date DATE NOT NULL,
    to_date DATE,
    FOREIGN KEY (emp_no) REFERENCES employees (emp_no),
    PRIMARY KEY (emp_no, dept_no)
);