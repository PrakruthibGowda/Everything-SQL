--Find average salary per department and order by highest salary

SELECT e.department_id, AVG(e.salary) as avg_salary
FROM Employee e
GROUP BY e.department_id
ORDER BY avg_salary desc


