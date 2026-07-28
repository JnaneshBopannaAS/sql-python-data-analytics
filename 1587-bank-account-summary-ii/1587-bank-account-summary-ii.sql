# Write your MySQL query statement below
SELECT u.name, SUM(t.amount) as balance 
from Users u left join Transactions t on u.account = t.account
group by u.account
having SUM(t.amount) > 10000