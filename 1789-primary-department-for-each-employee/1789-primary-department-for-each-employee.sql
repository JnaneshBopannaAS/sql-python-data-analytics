# Write your MySQL query statement below
SELECt employee_id, department_id
FROM Employee
Where primary_flag = 'Y'
union
SELECt employee_id, department_id
FROM Employee
Group by employee_id
having count(employee_id)=1
order by employee_id