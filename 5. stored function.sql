DROP FUNCTION IF EXISTS divide_floats;

DELIMITER //

CREATE FUNCTION divide_floats(a FLOAT, b FLOAT)
RETURNS FLOAT
DETERMINISTIC
BEGIN
  IF b = 0 THEN
    RETURN NULL;
  END IF;
  RETURN a / b;
END;
//

DELIMITER ;

SELECT 
  order_id,
  product_id,
  quantity,
  divide_floats(quantity, 2.5) AS divided_quantity
FROM order_detail;