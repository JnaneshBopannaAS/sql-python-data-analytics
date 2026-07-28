# Write your MySQL query statement below
Select sell_date, 
COUNT(DISTINCT(product)) as num_sold , GROUP_CONCAT(Distinct product order by product asc SEPARATOR ',') as products 
FROM Activities 
GROUP BY sell_date
order by sell_date asc;