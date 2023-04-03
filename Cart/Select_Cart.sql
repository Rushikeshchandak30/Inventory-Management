SELECT *FROM Cart
    JOIN customer
    ON Cart.customerid = customer.customer_id
    ;

SELECT * FROM customer
    JOIN Cart
    ON customer.customer_id = Cart.customerid;

SELECT * FROM customer
    LEFT JOIN Cart
    ON customer.customer_id = Cart.customerid;

SELECT * FROM customer
    RIGHT JOIN Cart
    ON customer.customer_id = Cart.customerid;

SELECT * FROM customer
    CROSS JOIN Cart
    ON customer.customer_id = Cart.customerid;
    
SELECT CURRENT_TIMESTAMP();    

