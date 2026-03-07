## Find employees earning more than the average salary

SELECT e.name, e.salary
FROM Employees e
WHERE e.salary >
(
 SELECT AVG(salary)
  FROM Employees
);
