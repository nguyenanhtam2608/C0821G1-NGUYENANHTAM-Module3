create database demo ;
use demo ;

drop database demo;
create table products(
p_id int auto_increment primary key,
p_code  int,
p_name varchar(45),
p_price double,
p_amount int,
p_description varchar(100),
p_status varchar(50)
);


insert into products 
values
(1,1,'milk',10000,1,'ngon','còn'),
(2,2,'bánh',15000,1,'ngon','còn'),
(3,3,'cocacola',20000,1,'ngon','còn');

select *
from products
where p_id = 2;

-- Tạo Unique Index trên bảng Products (sử dụng cột productCode để tạo chỉ mục)
create unique index idx_p_code
on products(p_code);
drop index   idx_p_code
on products;


-- Tạo Composite Index trên bảng Products (sử dụng 2 cột productName và productPrice)

create index p_code_price_index 
on products(p_code,p_price);
drop  index p_code_price_index  
on products;


-- Tạo view lấy về các thông tin: productCode, productName, productPrice, productStatus từ bảng products.
-- Tiến hành sửa đổi view
-- Tiến hành xoá view

create view v_product as
select p_code, p_name,p_price,p_status
from products;
-- display view
select *
from v_product;

-- Tiến hành sửa đổi view
alter view  v_product as
select p_code, p_name,p_price,p_status
from products
where p_code >=2;

-- xóa view 
drop view v_product;



-- Tạo store procedure lấy tất cả thông tin của tất cả các sản phẩm trong bảng product
-- Tạo store procedure thêm một sản phẩm mới
-- Tạo store procedure sửa thông tin sản phẩm theo id
-- Tạo store procedure xoá sản phẩm theo id
delimiter //
create procedure p_product()
begin
select * 
from products;
end
// delimiter ;
-- gọi store procedure
call  p_product();

drop  procedure p_product

-- -- Tạo store procedure thêm một sản phẩm mới

delimiter //
create procedure  add_product()
begin 
insert into products
values
(4,4,'bánh',15000,1,'ngon','còn');
end;
// delimiter ;

call add_product();
-- xóa 
drop PROCEDURE  add_product;


-- Tạo store procedure sửa thông tin sản phẩm theo id
delimiter //
create procedure up_product(p_id int)
begin
update products
set p_name = 'chuối',p_price = 5000,p_amount = 20
where p_id like concat('%', p_id,'%');
end;
// delimiter ;
call up_product(1);
drop procedure up_product;



-- xóa store procedure sửa thông tin sản phẩm theo id
delimiter //
create procedure de_product(p_id int)
begin
delete
from products
where p_id like concat('%', p_id,'%');
end;
// delimiter ;
call de_product(1);
drop procedure de_product;


