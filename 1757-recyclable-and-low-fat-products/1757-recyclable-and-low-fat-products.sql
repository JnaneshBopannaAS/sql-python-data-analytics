# Write your MySQL query statement below
SELECT product_id
FROM Products 
where low_fats ='Y' and recyclable = 'Y'
group by product_id