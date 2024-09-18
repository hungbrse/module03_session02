create database ex06;
use ex06;


create table users(
id int auto_increment primary key,
fullName varchar(255),
email varchar(255),
password varchar(255),
phone varchar(11),
permission bit,
status bit
);


create table address(
id int auto_increment primary key,
user_id int,foreign key(user_id) references users(id),
receiveAddress varchar(100),
receiveName varchar(100),
receivePhone varchar(100),
isDefault bit
);


create table orders(
id int auto_increment primary key,
orderAt datetime ,
totals double,
user_id int, foreign key(user_id) references users(id),
status bit
);

create table catalog(
id int auto_increment primary key,
name varchar(100),
status bit
);

create table product(
id int auto_increment primary key,
name varchar(100),
price double,
stock int,
catalog_id int, foreign key(catalog_id) references catalog(id),
status bit
);

create table order_details(
id int auto_increment primary key,
order_id int, foreign key(order_id) references orders(id),
product_id int, foreign key(product_id) references product(id),
quantity int,
unit_price int
);


create table wishList(
user_id int, foreign key(user_id) references users(id),
product_id int, foreign key(product_id) references product(id)
);

create table shopping_cart(
id int auto_increment primary key,
user_id int, foreign key(user_id) references users(id),
product_id int, foreign key(product_id) references product(id),
quantity int
);



