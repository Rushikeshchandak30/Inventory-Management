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
  
  
INSERT INTO product(product_description, category, quantity, price, thumbnail, product_name) VALUES ("Best product you'll find", "Clothes", 12, 450, "Image spave", "Shirt");
INSERT INTO product(product_description, category, quantity, price, thumbnail, product_name) VALUES ("Best product you'll find", "Clothes", 12, 450, "Image spave", "Sweat Shirt");
INSERT INTO product(product_description, category, quantity, price, thumbnail, product_name) VALUES ("Best product you'll find", "Clothes", 12, 450, "Image spave", "Tshirt");
INSERT INTO product(product_description, category, quantity, price, thumbnail, product_name) VALUES ("Best product you'll find", "Clothes", 12, 450, "Image spave", "Jeans");
INSERT INTO product(product_description, category, quantity, price, thumbnail, product_name) VALUES ("Best product you'll find", "Clothes", 12, 450, "Image spave", "Trousers");
INSERT INTO product(product_description, category, quantity, price, thumbnail, product_name) VALUES ("Best product you'll find", "Clothes", 12, 450, "Image spave", "Jordans");
INSERT INTO product(product_description, category, quantity, price, thumbnail, product_name) VALUES ("Best product you'll find", "Clothes", 12, 450, "Image spave", "Nike air");
INSERT INTO product(product_description, category, quantity, price, thumbnail, product_name) VALUES ("Best product you'll find", "Clothes", 12, 450, "Image spave", "Puma One8");
INSERT INTO product(product_description, category, quantity, price, thumbnail, product_name) VALUES ("Best product you'll find", "Clothes", 12, 450, "Image spave", "socks");
INSERT INTO product(product_description, category, quantity, price, thumbnail, product_name) VALUES ("Best product you'll find", "Clothes", 12, 450, "Image spave", "watches");
