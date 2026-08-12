# Write your MySQL query statement below
SELECT user_id, email
FROM Users 
WHERE email REGEXp '^[a-z0-9]+@[^0-9]+\\.com$'
order by user_id