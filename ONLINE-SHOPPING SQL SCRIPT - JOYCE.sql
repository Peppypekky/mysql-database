REM   Script: Online shop
REM   order

create table Store (  
  sid     integer,  
  name   varchar2(15),  
  province   varchar2(15),  
  city   varchar2(15),  
  streetaddr   varchar2(15),  
  customerGrade   varchar2(15),  
  startTime   varchar2(15)  
);

create table Users (  
  userid     integer,  
  name varchar2(10),  
  phoneNumber  varchar2(10)  
);

create table Buyer (  
  userid     integer  
);

create table Seller (  
  userid     integer  
);

create table Brand (  
  brandName varchar2(25)  
);

create table Order (  
  ordernumber     integer,  
  paymentState varchar2(25),  
  creationTime varchar2(25),  
  totalAmount integer  
);

create table Order_items (  
  itemid     integer,  
  pid integer,  
  price  integer,  
  creationTime  varchar2(10)  
);

create table Payment (  
  orderNumber     integer,  
  creaditcardNumber varchar2(10),  
  paymentTime  varchar2(10)  
  
 
insert into Store values ( 1, 'John', 'leeds', 'machester', '12 ave', '4', 'march' );

insert into Store values ( 2, 'Janet', 'leeds', 'machester', '12 ave', '4', 'march' );

insert into Store values ( 3, 'Tio', 'leeds', 'machester', '12 ave', '4', 'march' );

insert into Users values ( 2, 'Janet', '090223' );

insert into Users values ( 3, 'Tio', '1232' );

insert into Users values ( 4, 'joy', '32345' );

insert into Buyer values ( 1, );

insert into Buyer values ( 2, );

insert into Buyer values ( 3, );

insert into Seller values ( 3, );

insert into Seller values ( 6, );

insert into Seller values ( 8, );

insert into Order values ( 2, 'leeds', 'june 10 dollars' );

insert into Order values ( 3, 'salford', 'may 10 dollars' );

insert into Order values ( 4, 'machester', 'octomber 10 dollars' );

insert into Order_items values ( 1, '2', '2 pounds', 'January' );

insert into Order_items values ( 2, '5', '10 pouns', 'December' );

insert into Order_items values ( 3, '3', '3 pounds', 'July' );

insert into Payment values ( 2, '12as', 'Feburary' );

insert into Payment values ( 3, '54de', 'April' );

insert into Payment values ( 4, '11er', 'August' );

commit;

select * from Store;

select * from Users;

select * from Buyer;

select * from Seller;

select * from Orders;

select * from Brand;

select *   
from   Store  
cross join Users;

select *   
from   Store  
inner  join Users  
on     sid = userid;

select *   
from   Store  
left   outer join Users  
on     sid = userid;

SELECT sid    
FROM Store    
UNION    
SELECT userid    
FROM Users;

SELECT sid  
FROM Store    
INTERSECT    
SELECT userid    
FROM Users;

select userid  
from Users  
where not exists (select * from table(Users.userid));

select * from Store  
WHERE sid >= to_timestamp(sysdate-1)   
and sid < to_timestamp(sysdate);

SELECT sid, name, province,  
   sum(sid) AS sid FROM Store  
   GROUP BY ROLLUP(sid, name, province);

