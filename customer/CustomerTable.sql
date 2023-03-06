
CREATE TABLE customer(
    customer_id INT PRIMARY KEY AUTO_INCREMENT,
    email_id VARCHAR(100) UNIQUE NOT NULL
);

 ALTER TABLE customer
    ADD COLUMN
    phone_no INT;

CREATE TABLE addresses(
     address_id INT PRIMARY KEY,
     country VARCHAR(20) NOT NULL DEFAULT 'India',
     state VARCHAR(20),
     city VARCHAR(20),
     flat VARCHAR(100),
     pincode INT
);

ALTER TABLE customer
    MODIFY phone_no BIGINT;

INSERT INTO customer VALUES(1, 'a.a@gmail.com', 9404204833);

INSERT INTO addresses(address_id) VALUES(1);

SELECT * FROM customer
    JOIN addresses
    ON customer.customer_id = addresses.address_id;
