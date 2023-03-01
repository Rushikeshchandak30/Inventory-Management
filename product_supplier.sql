CREATE TABLE product(
    product_id INT PRIMARY KEY AUTO_INCREMENT,
    product_description VARCHAR(1000),
    category VARCHAR(20),
    quantity INT,
    price INT,
    thumbnail VARCHAR(100),
    product_name VARCHAR(30));

 CREATE TABLE supplier(
    supplier_id INT PRIMARY KEY AUTO_INCREMENT,
    rating INT,
    company_name VARCHAR(20),
    contact_number INT);

 ALTER TABLE supplier
    ADD FOREIGN KEY(supplier_id)
    REFERENCES product(product_id);