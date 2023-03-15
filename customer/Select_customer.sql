SELECT * FROM customer
    JOIN addresses
    ON customer.customer_id = addresses.address_id
    JOIN names
    ON customer.customer_id = names.name_id;

SELECT DISTINCT city FROM addresses;

SELECT COUNT(address_id), city 
    FROM addresses
    GROUP BY city;


 SELECT * FROM addresses
    WHERE city = 'Pune' OR city = 'Mumbai';


SELECT * FROM addresses
    JOIN customer
    ON addresses.address_id = customer.customer_id;

SELECT * FROM addresses
    INNER JOIN customer
    ON addresses.address_id = customer.customer_id;

