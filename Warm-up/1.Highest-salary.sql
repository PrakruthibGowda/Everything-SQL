--Write a query to find the employee with highest salary from an employees table.
SELECT name, salary
FROM Employee
WHERE salary = (
  SELECT MAX(salary)
  FROM Employee
)
