REM   Script: Renting of cars
REM   car-rentals

create table Customer (   
  customer_id     integer,   
  first_name   varchar2(15),  
  last_name   varchar2(15),  
  email   varchar2(15),  
  SSN   varchar2(15),  
  mobile   varchar2(15),  
  state_name   varchar2(15),  
  state_addrev   varchar2(15),  
  country   varchar2(15)  
);

create table rent (   
  Reservation_id     integer,   
  VIN    integer,   
  Amount varchar2(10),   
  Pickup_date  varchar2(10),  
  Return_date  varchar2(10),  
  location_id    integer,   
  customer_id    integer   
);

create table Car (   
  VIN     integer,   
  model varchar2(10),   
  brand  varchar2(10),   
  color  varchar2(10),  
  Description  varchar2(45),  
  date_of_purchase  varchar2(10),  
  category_id     integer  
);

create table Car_categories (   
  category_id     integer,   
  label varchar2(10),   
  Description  varchar2(25)   
);

create table Location (   
  loaction_id     integer,   
  street varchar2(25),   
  str_number  varchar2(40),  
  city  varchar2(40),  
  country  varchar2(40),  
  state_name  varchar2(40),  
  state_addrev  varchar2(40)  
);

create table Phone (   
  phone_number    integer,   
  location_id integer  
);

insert into Customer values ( 1, 'John', 'Joe', 'johnjoe@gmail.com', '112@', '0786745', 'leeds', '5th avenue', 'UK' );

insert into Customer values ( 2, 'John', 'Joe', 'johnjoe@gmail.com', '112@', '0786745', 'leeds', '5th avenue', 'UK' );

insert into Customer values ( 3, 'John', 'Joe', 'johnjoe@gmail.com', '112@', '0786745', 'leeds', '5th avenue', 'UK' );

insert into rent values ( 2, '234', '40', 'April', 'May', 'leeds', '2' );

insert into rent values ( 3, '234', '40', 'April', 'May', 'leeds', '2' );

insert into rent values ( 4, '234', '40', 'April', 'May', 'leeds', '2' );

insert into Car values ( 1, 'ford', 'Ford Motors', 'white', 'Must be returned at the said time', 'June', '12' );

insert into Car values ( 2, 'Toyota', 'Toyota', 'black', 'Must be returned at the said time', 'June', '12' );

insert into Car values ( 3, 'bnw', 'Benz', 'blue', 'Must be returned at the said time', 'June', '12' );

insert into Car_categories values ( 2, 'bmw', 'Must be returned at the said time' );

insert into Car_categories values ( 3, 'ford', 'Must be returned at the said time' );

insert into Car_categories values ( 4, 'Toyota', 'Must be returned at the said time' );

insert into Location values ( 1, 'whales', 'twelve', 'leeds', 'UK', 'ten', 'whales road' );

insert into Location values ( 2, 'whales', 'twelve', 'leeds', 'UK', 'ten', 'whales road' );

insert into Location values ( 3, 'whales', 'twelve', 'leeds', 'UK', 'ten', 'whales road' );

insert into Phone values ( 070556, '25' );

insert into Phone values ( 86577, '20' );

insert into Phone values ( 081234, '12' );

commit;

select * from Customer;

select * from rent;

select * from Car;

select * from Car_categories;

select * from Location;

select * from Phone;

select *    
from   Car   
cross join Location;

select *    
from   Location   
inner  join Phone   
on     location_id = location_id;

select *    
from   Location   
left   outer join Phone   
on     location_id = location_id;

SELECT VIN     
FROM Car    
UNION     
SELECT location_id    
FROM Phone;

SELECT color  
FROM car  
INTERSECT     
SELECT city     
FROM Location;

select location_id  
from Location  
where not exists (select * from table(Location.street));

select * from Car   
WHERE model >= to_timestamp(sysdate-1)    
and model < to_timestamp(sysdate);

SELECT VIN, model, color, Description,   
   sum(VIN) AS VIN FROM Car   
   GROUP BY ROLLUP(VIN, model, color, Description);

