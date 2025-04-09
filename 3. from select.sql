SELECT 
  order_id,
  AVG(quantity) AS avg_quantity
FROM (
  SELECT *
  FROM order_detail
  WHERE quantity > 10
) AS filtered_orders
GROUP BY order_id;