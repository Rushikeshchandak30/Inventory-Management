create table Order1( customerid int auto_increment primary key, OrderName varchar(100),CustomerNo varchar(225), Price INT(10),DeliveryTimeDays INT(10),CustomerAdd VARCHAR(20));


insert into Order1(OrderName, CustomerNo,Price,DeliveryTimeDays,CustomerAdd) values  ('Tshirt',9087654321,500,4,'Chennai'),('Clothes',8907654321,4500,2,'Chennai'),('Furniture',6768989991,890,8,'Kolkata');
insert into Order1(OrderName, CustomerNo,Price,DeliveryTimeDays,CustomerAdd) values  ('Laptop',9673524012,65000,2,'Thane'),('Charger',971204980,300,12,'Kalyan'),('Keyboard',8882712345,3000,10,'Pimpri Chinchwad');
insert into Order1(OrderName, CustomerNo,Price,DeliveryTimeDays,CustomerAdd) values  ('Mouse',8807034567,2000,20,'Jammu'),('Printer',7718349012,5000,12,'Panji'),('Frames',90129901211,1000,10,'Bhopal');
insert into Order1(OrderName, CustomerNo,Price,DeliveryTimeDays,CustomerAdd) values  ('Phonecover',7917230918,100,3,'Jaipur');
insert into Order1(OrderName, CustomerNo,Price,DeliveryTimeDays,CustomerAdd) values  ('Bottle',888066060,150,7,'Amravati');
insert into Order1(OrderName, CustomerNo,Price,DeliveryTimeDays,CustomerAdd) values  ('Grocery',9373284091,2500,4,'Kolhapur');
insert into Order1(OrderName, CustomerNo,Price,DeliveryTimeDays,CustomerAdd) values  ('Chairs',9919802301,3600,8,'Nagpur');
insert into Order1(OrderName, CustomerNo,Price,DeliveryTimeDays,CustomerAdd) values  ('Fan',7867857890,1000,2,'Chennai'),('Headphones',8907909877,5000,8,'Amravati'),('Television',9080808909,20000,2,'Banglore');



Alter table Order1 add CustomerAdd Varchar(20);
Alter table order1 change column CustomerNu CustomerNo varchar(45);
