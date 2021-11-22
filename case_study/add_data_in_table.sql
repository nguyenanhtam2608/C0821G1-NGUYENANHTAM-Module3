use furama;


insert into vi_tri
values
(1,'QN'),
(2,'HN'),
(3,'HCM'),
(4,'DN'),
(5,'QN');

insert into trinh_do
values
(1,'DH'),
(2,'DH'),
(3,'CD'),
(4,'DH'),
(5,'CD');

insert into bo_phan
values
(1,'phuc vu'),
(2,'phuc vu'),
(3,'quan ly'),
(4,'phuc vu'),
(5,'quan ly');

insert into nhan_vien
values
(1,'tam','2002/08/26', '206405031',10000,'0763709673','tam@gmail.com','QN',1,1,1),
(2,'thanh','2002/08/26', '206405031',10000,'0763709673','tam@gmail.com','QN',2,2,2),
(3,'huy','2002/08/26', '206405031',10000,'0763709673','tam@gmail.com','QN',3,3,3),
(4,'kien','2002/08/26', '206405031',10000,'0763709673','tam@gmail.com','QN',4,4,4),
(5,'truong','2002/08/26', '206405031',10000,'0763709673','tam@gmail.com','QN',5,5,5);

insert into loai_khach
values
(1,'menber'),
(2,'gold'),
(3,'platinum'),
(4,'diamond'),
(5,'platinum');


insert into khach_hang
values
(1,1,'nguyen anh tuan','1972/08/24','nam','0905700994','tuan@gmail.com','QT'),
(2,2,'nguyen anh hoang','1975/08/24','nam','0905700994','hoang@gmail.com','DN'),
(3,3,'nguyen anh Tâm','1975/08/24','nam','0905700994','hoang@gmail.com','DN'),
(4,4,'nguyen thị Tuyết','1975/08/24','nam','0905700994','hoang@gmail.com','DN'),
(5,5,'nguyen anh thanh','1975/08/24','nam','0905700994','hoang@gmail.com','DN');


insert into loai_dich_vu values
(1,'villa'),
(2,'house'),
(3,'room'),
(4,'house'),
(5,'room');

insert into kieu_thue values
(1,'giờ',500000),
(2,'ngày',1000000),
(3,'tháng',2000000),
(4,'ngày',500000),
(5,'tháng',2000000);

insert into dich_vu values
(1,'villa',250,3,100000,'vip','điều hòa', 100,3,1,1),
(2,'house',750,6,150000,'vip','điều hòa', 100,3,2,2),
(3,'room',550,9,200000,'vip','điều hòa', 100,3,3,3),
(4,'house',750,9,200000,'vip','điều hòa', 100,4,4,4),
(5,'room',550,9,200000,'vip','điều hòa', 100,5,5,5);

insert into hop_dong values
(1,'2019/01/26','2021/08/27',150000,500000,1,1,1),
(2,'2015/02/26','2021/08/27',150000,1000000,2,2,2),	
(3,'2018/11/17','2021/08/27',150000,9000000,3,3,3),
(4,'2019/02/17','2021/08/27',150000,9000000,4,4,4),
(5,'2019/01/17','2021/08/27',150000,15000000,5,5,5);



insert into dich_vu_di_kem values 
(1,'thức ăn',20000, 2, 'có'),
(2,'đồ uông',40000, 3, 'có'),
(3,'thức ăn',20000, 15, 'có'),
(4,'massa',20000, 4, 'có'),
(5,'thức ăn',30000, 12, 'có');



insert into hop_dong_chi_tiet values
(1,1,1,2),
(2,2,2,1),
(3,3,3,9),
(4,4,4,20),
(5,5,5,15);


