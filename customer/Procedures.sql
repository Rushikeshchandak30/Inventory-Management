
DELIMITER $$

CREATE PROCEDURE getCustomerByLastName(IN lastName VARCHAR(20)) 
BEGIN 
	SELECT * FROM names WHERE last_name = lastName;
END$$ 

DELIMITER ;

CALL getCustomerByLastName('Messi');

DELIMITER $$

CREATE PROCEDURE getCustomerByLocation(IN searchLocation VARCHAR(20)) 
BEGIN 
	SELECT * FROM addresses
    INNER JOIN customer 
        ON addresses.address_id = customer.customer_id
    WHERE addresses.city = searchLocation; 
END$$ 

DELIMITER ;

CALL getCustomerByLocation ('Chennai');

DELIMITER $$
CREATE Procedure getTotalCustomers(OUT totalCount int)
BEGIN
    SELECT COUNT(customer_id) INTO totalCount FROM customer;
END$$

DELIMITER ;

CALL getTotalCustomers(@totalCount);
SELECT @totalCount;