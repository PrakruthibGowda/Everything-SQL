--Rank employees by salary

SELECT e.*,
DENSE_RANK() OVER(ORDER BY e.salary desc) as rnk
FROM Employees;
