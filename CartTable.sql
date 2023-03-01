1) Create Table for cart :-

create table Cart(
    customerid int,
    ProductName varchar(255),
    TotalPrice int,
     );


ALTER TABLE Cart
    ADD FOREIGN KEY(customerid)
    REFERENCES customer(user_id);