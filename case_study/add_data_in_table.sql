use furama;




insert into vi_tri
values
(1,'QN'),
(2,'HN'),
(3,'HCM'),
(4,'DN');

insert into trinh_do
values
(1,'DH'),
(2,'DH'),
(3,'CD');

insert into bo_phan
values
(1,'phuc vu'),
(2,'phuc vu'),
(3,'quan ly');

insert into nhan_vien
values
(1,'tam','2002/08/26', '206405031',10000,'0763709673','tam@gmail.com','QN',1,1,1),
(2,'tam','2002/08/26', '206405031',10000,'0763709673','tam@gmail.com','QN',1,1,1);

insert into loai_khach
values
(1,'menber'),
(2,'gold');

insert into khach_hang
values
(1,1,'nguyen anh tuan','1972/08/24','nam','0905700994','tuan@gmail.com','QN'),
(2,2,'nguyen anh hoang','1975/08/24','nam','0905700994','hoang@gmail.com','QN');


insert into loai_dich_vu values
(1,'villa'),
(2,'house');

insert into kieu_thue values
(1,'giờ',500000),
(2,'ngày',1000000);

insert into dich_vu values
(1,'villa',250,3,'vip','điều hòa', 100,3,1,1);

insert into hop_dong values
(1,'2021/08/26','2021/08/27',150000,1,1,1);

insert into dich_vu_di_kem values 
(1,'thức ăn',20000, 2, 'có');

insert into hop_dong_chi_tiet values
(1,1,1,1);

select * from khach_hang;