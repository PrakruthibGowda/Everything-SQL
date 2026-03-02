--Write a query to find the second highest salary from an employees table.
SELECT e.name, e.salary
FROM
  (
SELECT *, 
DENSE_RANK() OVER(Order by Salary desc) as d_rnk
FROM Employee 
  ) e
WHERE d_rnk=2;
