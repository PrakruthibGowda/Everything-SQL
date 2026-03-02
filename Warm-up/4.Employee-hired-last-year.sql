--Employee details hired in last 1 year
SELECT e.name, e.salary, e.department_id, e.hire_date
FROM Employee e
WHERE e.hire_date >= DATEADD(YEAR, -1, GETDATE());

--Related query, Query number of years of experience for every employee
SELECT e.name, e.salary, e.department_id, e.hire_date,
DATEDIFF(YEAR, hire_date, GETDATE()) AS years_experience
FROM Employee e;
