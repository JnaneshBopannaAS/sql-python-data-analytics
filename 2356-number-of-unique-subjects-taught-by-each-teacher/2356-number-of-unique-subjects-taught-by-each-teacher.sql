# Write your MySQL query statement below
SELECt teacher_id, COUNT(DISTINCT subject_id) as cnt
FROM Teacher 
Group BY teacher_id