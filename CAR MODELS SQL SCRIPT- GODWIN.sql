REM   Script: Car modelling
REM   BRANDS

create table Continents (  
  contid     integer,  
  continent   varchar2(15)  
);

create table Country (  
  countryid     integer,  
  countryName varchar2(10),  
  continent  varchar2(10)  
);

create table Car_makers (  
  id     integer,  
  maker varchar2(10),  
  fullName  varchar2(10),  
  country  varchar2(10)  
);

create table Model_details (  
  modelid     integer,  
  maker varchar2(10),  
  model  varchar2(25)  
);

create table Car_names (  
  id     integer,  
  model varchar2(25),  
  descr  varchar2(40)  
);

create table Car_details (  
  id     integer,  
  mpg integer,  
  cyclinder  integer,  
  edisp  integer,  
  horsepower  integer,  
  weight  integer,  
  accel  integer,  
  year  integer,  
);

insert into Continent values ( 1, 'asia' );

insert into Continent values ( 2, 'europe' );

insert into Continent values ( 3, 'africa' );

insert into Country values ( 2, 'Japan', '1' );

insert into Country values ( 3, 'UK', '2' );

insert into Country values ( 4, 'South Africa', '3' );

insert into Car_maker values ( 1, 'ford', 'Ford Motors', 'Japan' );

insert into Car_maker values ( 2, 'Toyota', 'Toyota', 'Japan' );

insert into Car_maker values ( 3, 'bnw', 'Benz', 'UK' );

insert into Model_details values ( 2, 'bmw', 'bmw 640' );

insert into Model_details values ( 3, 'ford', 'ford 1003' );

insert into Model_details values ( 4, 'Toyota', 'Toyota Camry' );

insert into Car_names values ( 1, 'ford', 'Blue color with tinted glass' );

insert into Car_names values ( 2, 'Toyota', 'white color with tinted glass' );

insert into Car_names values ( 3, 'bnw', 'Black color with tinted glass' );

insert into Car_details values ( 2, '66kg', '5kg', '560', '4', '5000kg', '78', '2009' );

insert into Car_details values ( 3, '45kg', '12kg', '780', '4', '5000kg', '56', '2006' );

insert into Model_details values ( 4, '67kg', '10kg', '770', '4', '5000kg', '18', '2010' );

commit;

select * from Continent;

select * from Country;

select * from Car_maker;

select * from Model_details;

select * from Car_names;

select * from Car_details;

select *   
from   Country  
cross join Model_details;

select *   
from   Country  
inner  join Model_details  
on     countryid = modelid;

select *   
from   Country  
left   outer join Model_details  
on     countryid = modelid;

SELECT id    
FROM Car_names    
UNION    
SELECT modelid    
FROM Model_details;

SELECT id  
FROM Car_names    
INTERSECT    
SELECT modelid    
FROM Model_details;

select countryid  
from Country  
where not exists (select * from table(Country.countryName));

select * from Car_names  
WHERE model >= to_timestamp(sysdate-1)   
and model < to_timestamp(sysdate);

SELECT id, model, descr,  
   sum(id) AS id FROM Car_names  
   GROUP BY ROLLUP(id, model, descr);

