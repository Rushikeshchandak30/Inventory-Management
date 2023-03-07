/*  Inserting the data  */
insert into
     Cart(customerid,ProductName,TotalPrice)
     VALUES(1,'Phone',10000),
     (2, 'Watch',2000),
     (3, 'Shoes',1200),
     (4,'Floaters',1500),
     (5,'Headphones',5000),
     (6,'Fan',1000),
     (7,'Telivision',20000),
     (8,'Tshirt',500),
     (9,'Clothes',4500),
     (10,'Furniture',890),
     (11,'Laptop',65000),
     (12,'Charger',300),
     (13,'keyboard',3000),
     (14,'Mouse',2000),
     (15,'Printer',5000),
     (16,'Frames',1000),
     (17,'Chairs',3600),
     (18,'Grocery',2500),
     (19,'Bottle',150),
     (20,'Phonecover',100);
     
     /*      For delete  */
     DELETE FROM Cart WHERE customerid = 1;
