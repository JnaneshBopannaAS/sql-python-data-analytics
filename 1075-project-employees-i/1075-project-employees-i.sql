# Write your MySQL query statement below
SELECT p.project_id, ROUND(AVG(experience_years),2) as average_years
FROM Project p LEft join Employee e ON p.employee_id = e.employee_id
Group By p.project_id