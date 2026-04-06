DROP FUNCTION IF EXISTS CalculateDiv;

DELIMITER //

CREATE FUNCTION CalculateDiv(num1 FLOAT, num2 FLOAT)
RETURNS FLOAT
DETERMINISTIC 
NO SQL
BEGIN
	DECLARE result FLOAT;
	SET result = IF(num2 = 0, NULL, num1/num2);
	RETURN result;
END //
	
DELIMITER ;

SELECT CalculateDiv(quantity, 2) devided_quntity
FROM order_details;