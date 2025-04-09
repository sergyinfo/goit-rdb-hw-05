SELECT 
  od.*, 
  (
    SELECT o.customer_id 
    FROM `order` o 
    WHERE o.order_id = od.order_id
  ) AS customer_id
FROM order_detail od;