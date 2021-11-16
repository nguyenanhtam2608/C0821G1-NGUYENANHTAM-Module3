use quan_ly_ban_hang;
-- Hiển thị các thông tin  gồm oID, oDate, oPrice của tất cả các hóa đơn trong bảng Order
select o_id, o_date,p.p_price
from `order` o join product p 
on o.o_id = p.p_id;

-- Hiển thị danh sách các khách hàng đã mua hàng
select * from customer;

-- anh sách sản phẩm được mua bởi các khách

select * from product;


