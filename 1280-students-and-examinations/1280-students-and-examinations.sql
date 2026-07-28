# Write your MySQL query statement below
SELECT s.student_id,s.student_name,su.subject_name, COUNT(e.student_id) as attended_exams
FROM Students s cross join Subjects su LEFT join Examinations E
on s.student_id = e.student_id AND su.subject_name = e.subject_name
group by s.student_id,s.student_name,su.subject_name
order by s.student_id,s.student_name,su.subject_name