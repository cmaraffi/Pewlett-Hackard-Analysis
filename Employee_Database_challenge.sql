-- Use Dictinct with Orderby to remove duplicate rows
-- Number of [titles] retiring
SELECT ce.emp_no,
  ce.first_name,
  ce.last_name,
  ti.titles,
  ti.from_date,
  ti.to_date
INTO retirement_titles
FROM employees AS ce
  INNER JOIN titles AS ti
    ON (ce.emp_no = ti.emp_no)
WHERE birth_date BETWEEN '1952-01-01' AND '1955-12-31'
ORDER BY ce.emp_no;

-- Use Dictinct with Orderby to remove duplicate rows
SELECT DISTINCT ON (emp_no) emp_no, first_name, last_name, titles
INTO unique_titles
FROM retirement_titles
ORDER BY emp_no ASC, to_date DESC;

select * from retirement_titles

select * from unique_titles

-- number of retiring titles
SELECT COUNT(ut.titles), ut.titles
INTO retiring_titles
FROM unique_titles as ut
GROUP BY ut.titles
ORDER BY COUNT(ut.titles) DESC;

select * from retiring_titles

-- Mentorship Eligibility query
SELECT DISTINCT ON (emp_no) e.emp_no, e.first_name, e.last_name, e.birth_date, de.from_date, de.to_date, t.titles
INTO mentorship_eligibility
FROM employees as e
	INNER JOIN dep_emp as de
		ON (e.emp_no = de.emp_no)
	INNER JOIN titles as t
		ON (e.emp_no = t.emp_no)
WHERE birth_date BETWEEN '1965-01-01' AND '1965-12-31'
ORDER BY e.emp_no;

-- Working with Pewlett-Hackard query twenty years
SELECT DISTINCT ON (emp_no) e.emp_no, e.first_name, e.last_name, e.birth_date, de.from_date, de.to_date, t.titles
INTO twenty_years
FROM employees as e
	INNER JOIN dep_emp as de
		ON (e.emp_no = de.emp_no)
	INNER JOIN titles as t
		ON (e.emp_no = t.emp_no)
WHERE de.from_date BETWEEN '2000-01-01' AND '2000-12-31'
ORDER BY e.emp_no;

select * from twenty_years