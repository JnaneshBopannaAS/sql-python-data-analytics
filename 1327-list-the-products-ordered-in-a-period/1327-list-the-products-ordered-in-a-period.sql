# Write your MySQL query statement below
SELECT p.product_name, SUM(o.unit) as unit
FROM Products p LEFT JOIN Orders o ON p.product_id = o.product_id 
WHERE  o.order_date like  '2020-02-%' 
group by o.product_id
having unit>=100;