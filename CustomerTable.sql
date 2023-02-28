CREATE TABLE customer(
    user_id INT PRIMARY KEY AUTO_INCREMENT,
    email_id VARCHAR(100) UNIQUE NOT NULL,
    address_id INT,
    name_id INT);

CREATE TABLE addresses(
    address_id INT PRIMARY KEY,
    country VARCHAR(20),
    state VARCHAR(30),
    city VARCHAR(20),
    locality VARCHAR(40),
    flat_no VARCHAR(5),
    building VARCHAR(20),
    pincode INT
    );

ALTER TABLE addresses
    ADD FOREIGN KEY(address_id)
    REFERENCES customer(user_id);

 ALTER TABLE customer
    ADD FOREIGN KEY(address_id)
    REFERENCES addresses(address_id);

CREATE TABLE names(
    name_id INT PRIMARY KEY,
    first_name VARCHAR(20),
    last_name VARCHAR(20)
    );

ALTER TABLE customer
    ADD FOREIGN KEY(name_id)
    REFERENCES names(name_id);

ALTER TABLE names ADD FOREIGN KEY(name_id) REFERENCES customer(user_id);
