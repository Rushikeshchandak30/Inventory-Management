CREATE VIEW Indian_Customers AS
SELECT * FROM addresses
INNER JOIN customer
ON addresses.address_id = customer.customer_id
WHERE addresses.country = 'India';

SELECT * FROM `Indian_Customers`;

CREATE VIEW Customers_with_cit_given AS
SELECT * FROM addresses
JOIN 