# Write your MySQL query statement below
SELECT v.customer_id,COUNT(*) as count_no_trans
FROM Visits v LEft JOIN Transactions t ON v.visit_id=t.visit_id
WHERE t.transaction_id IS NULL
group by v.customer_id