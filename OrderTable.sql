create table Order1( customerid int auto_increment primary key, OrderName varchar(100),CustomerNo varchar(225), Price INT(10),DeliveryTimeDays INT(10),CustomerAdd VARCHAR(20));
insert into Order1(OrderName, CustomerNo,Price,DeliveryTimeDays,CustomerAdd) values  ('Watch',767134529 ,2000,3,'Nashik');
insert into Order1(OrderName, CustomerNo,Price,DeliveryTimeDays,CustomerAdd) values  ('Phone',9404204833 ,1000,2,'Pune');
insert into Order1(OrderName, CustomerNo,Price,DeliveryTimeDays,CustomerAdd) values  ('Tshirt',9087654321,500,4,'Chennai'),('Clothes',8907654321,4500,2,'Chennai'),('Furniture',6768989991,890,8,'Kolkata');
insert into Order1(OrderName, CustomerNo,Price,DeliveryTimeDays,CustomerAdd) values  ('Laptop',9673524012,65000,2,'Thane'),('Charger',971204980,300,12,'Kalyan'),('Keyboard',8882712345,3000,10,'Pimpri Chinchwad');
insert into Order1(OrderName, CustomerNo,Price,DeliveryTimeDays,CustomerAdd) values  ('Mouse',8807034567,2000,20,'Jammu'),('Printer',7718349012,5000,12,'Panji'),('Frames',90129901211,1000,10,'Bhopal');
insert into Order1(OrderName, CustomerNo,Price,DeliveryTimeDays,CustomerAdd) values  ('Phonecover',7917230918,100,3,'Jaipur');
insert into Order1(OrderName, CustomerNo,Price,DeliveryTimeDays,CustomerAdd) values  ('Bottle',888066060,150,7,'Amravati');
insert into Order1(OrderName, CustomerNo,Price,DeliveryTimeDays,CustomerAdd) values  ('Grocery',9373284091,2500,4,'Kolhapur');
insert into Order1(OrderName, CustomerNo,Price,DeliveryTimeDays,CustomerAdd) values  ('Chairs',9919802301,3600,8,'Nagpur');
insert into Order1(OrderName, CustomerNo,Price,DeliveryTimeDays,CustomerAdd) values  ('Sack',9919802201,909,8,'Pune');
insert into Order1(OrderName, CustomerNo,Price,DeliveryTimeDays,CustomerAdd) values  ('Fan',7867857890,1000,2,'Chennai'),('Headphones',8907909877,5000,8,'Amravati'),('Television',9080808909,20000,2,'Banglore');
UPDATE Order1 SET price=10000 WHERE OrderName='Phone';


Alter table Order1 add CustomerAdd Varchar(20);
select OrderName from order1 where CustomerAdd="Nashik";
select OrderName from order1 where OrderName<>ALL(SELECT customerid from Payment);
select * from order1  where exists (select * from Payment where order1.CustomerAdd=Payment.Paymentid);
SELECT * FROM customer join order1 on customer.customer_id=order1.customerid join Payment on customer.customer_id=Payment.customerid;

SELECT customer.email_id,order1.customerid,order1.OrderName, Payment.Paymentid,Payment.method,order1.Price,Payment.paymentdate,order1.CustomerNo , order1.CustomerAdd,order1.DeliveryTimeDays 
From order1
 INNER JOIN Payment ON order1.customerid=Payment.customerid
 INNER JOIN customer ON Payment.customerid=customer.customer_id;
 
 
 SELECT * FROM order1 ORDER BY OrderName;

SELECT customer.email_id,order1.customerid,order1.OrderName, Payment.Paymentid,Payment.method,order1.Price,Payment.paymentdate,order1.CustomerNo , order1.CustomerAdd,order1.DeliveryTimeDays,product.product_id,product.product_description,product.category,product.quantity,product.price,product.thumbnail
   From order1
    INNER JOIN Payment ON order1.customerid=Payment.customerid
    INNER JOIN customer ON Payment.customerid=customer.customer_id
    INNER JOIN product ON customer.customer_id=product.product_id;

