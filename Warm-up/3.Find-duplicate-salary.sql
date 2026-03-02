--Find duplicate salaries
SELECT salary , Count(*)
FROM Employee
GROUP BY salary
HAVING Count(*) > 1;
