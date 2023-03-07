SELECT * FROM customer
    JOIN addresses
    ON customer.customer_id = addresses.address_id
    JOIN names
    ON customer.customer_id = names.name_id;
