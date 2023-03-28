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
  
  
INSERT INTO product(product_description, category, quantity, price, thumbnail, product_name,supplier_id) VALUES ("Best product you'll find", "Clothes", 12, 450, "Image spave", "Shirt", 2);
INSERT INTO product(product_description, category, quantity, price, thumbnail, product_name,supplier_id) VALUES ("Best product you'll find", "Clothes", 12, 450, "Image spave", "Sweat Shirt", 1);
INSERT INTO product(product_description, category, quantity, price, thumbnail, product_name,supplier_id) VALUES ("Best product you'll find", "Clothes", 12, 450, "Image spave", "Tshirt", 6);
INSERT INTO product(product_description, category, quantity, price, thumbnail, product_name,supplier_id) VALUES ("Best product you'll find", "Clothes", 12, 450, "Image spave", "Jeans", 4);
INSERT INTO product(product_description, category, quantity, price, thumbnail, product_name,supplier_id) VALUES ("Best product you'll find", "Clothes", 12, 450, "Image spave", "Trousers", 8);
INSERT INTO product(product_description, category, quantity, price, thumbnail, product_name,supplier_id) VALUES ("Best product you'll find", "Clothes", 12, 450, "Image spave", "Jordans", 5);
INSERT INTO product(product_description, category, quantity, price, thumbnail, product_name,supplier_id) VALUES ("Best product you'll find", "Clothes", 12, 450, "Image spave", "Nike air", 1);
INSERT INTO product(product_description, category, quantity, price, thumbnail, product_name,supplier_id) VALUES ("Best product you'll find", "Clothes", 12, 450, "Image spave", "Puma One8", 3);
INSERT INTO product(product_description, category, quantity, price, thumbnail, product_name,supplier_id) VALUES ("Best product you'll find", "Clothes", 12, 450, "Image spave", "socks", 2);
INSERT INTO product(product_description, category, quantity, price, thumbnail, product_name,supplier_id) VALUES ("Best product you'll find", "Clothes", 12, 450, "Image spave", "watches", 4);

SELECT * from product;
SELECT product_description from product;

SELECT product.product_id, supplier.company_name, product.category FROM product INNER JOIN supplier  ON product.supplier_id=supplier.supplier_id;

