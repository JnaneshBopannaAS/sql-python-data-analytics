# Write your MySQL query statement below
SELECT u.name , IFNULL(SUM(r.distance),0) AS travelled_distance
FROM Users u LEFT JOIN Rides r on u.id=r.user_id 
group by u.id
order by travelled_distance desc, u.name asc

