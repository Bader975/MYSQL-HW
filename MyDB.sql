create database store;

create table  countries(
    code int(20)  ,
 name varchar(20) unique ,
 continent_name varchar(20) not null

);

ALTER TABLE countries
ADD PRIMARY KEY (code);

create table  users(
    id int(20),
 full_name varchar(20) unique ,
 email varchar(20) unique,
 gender char(1),
 check(gender in ('m', 'f')),
 date_birth varchar(15),
 created_at datetime DEFAULT CURRENT_TIMESTAMP,
 country_code int (10)

);

ALTER TABLE users ADD FOREIGN KEY (country_code) REFERENCES countries (code);


create table  orders(
    id int(20),
 user_id varchar(20) unique ,
 status varchar(6) ,
  check(status in ('start', 'finish')),
 created_at datetime DEFAULT CURRENT_TIMESTAMP

);


create table  order_products(
    id int(20),
 order_id int(10) unique ,
 product_id int(10) unique,
 quantity int (20) default 0

);



create table  products(
    id int(20),
 name varchar(10) not null ,
 price int(5) default 0,
 status varchar(6) ,
  check(status in ('valid', 'expired')),
 created_at datetime DEFAULT CURRENT_TIMESTAMP

);
SET FOREIGN_KEY_CHECKS=0;
insert  into countries values  ('3','Bader','KSA');
insert  into users values  ('2','Bader Mohammad','b@sa.com','m','1996','2023-01-23 12:45:56','1234');
insert  into orders values  ('2','121','finish','2022-01-23 12:45:56');
insert  into order_products values  ('3','323','5265','200');
insert  into products values  ('5','item','50','valid','2022-01-23 12:45:56');

update  countries set  name='New Bader' where name='Bader';

delete from  products where id='5';
