-- First Hired Employee in Each Department

with hired AS
  (
SELECT 
  e.employee_id, 
  e.name, 
  e.hire_date, 
  e.department_id,
  ROW_NUMBER() OVER(Partition BY e.department_id ORDER BY e.hire_date) AS rn
FROM Employees e
)

SELECT employee_id,
       employee_name,
       department_id,
       hire_date
FROM hired
WHERE rn=1;
