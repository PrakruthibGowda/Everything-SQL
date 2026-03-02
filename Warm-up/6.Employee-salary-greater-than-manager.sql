--Find Employees whose salary is greater than their manager’s salary.
SELECT e.name AS emp_name,
       e.salary AS emp_salary,
       m.name AS manager_name,
       m.salary AS manager_salary
FROM Employee e
JOIN Employee m
ON e.manager_id = m.emp_id
WHERE e.salary > m.salary;

--To handle NULL where Employee without a manager wouldn't get printed and you only need Employee details

SELECT e.name, e.salary 
FROM Employee e
WHERE EXISTS 
  (
  SELECT 1 
  FROM Employee m
  WHERE e.manager_id = m.emp_id
  AND e.salary > m.salary
  );
