drop database if exists quan_ly_ban_hang;
create database quan_ly_ban_hang;

use quan_ly_ban_hang;

create table customer(
c_id int not null auto_increment primary key,
c_name varchar(50) not null,
c_age int not null
);

create table `order` (
o_id int not null auto_increment primary key,
c_id int not null ,
o_date date not null,
o_total_price int not null,
foreign key(c_id) references customer(c_id)
);


create table product(
p_id int not null auto_increment primary key,
p_name varchar(50) not null,
p_price int not null

);

create table oder_detail(
o_id int not null ,
p_id int not null,
primary key(o_id,p_id),
foreign key(p_id) references product(p_id),
foreign key(o_id) references `order`(o_id)
);

