create database quan_ly_diem_thi;

use quan_ly_diem_thi;

create table hoc_sinh(
ma_hs varchar(20) primary key,
ten_hs varchar (50),
ngay_sinh date,
lop varchar(20),
gioi_tinh varchar(20)
);

create table mon_hoc(
ma_mh varchar(20) primary key,
ten_mh varchar(50)
);


create table bang_diem(
ma_hs varchar(20),
ma_mh varchar(20),
diem_thi int,
ngay_thi date,
primary key(ma_hs,ma_mh),
foreign key(ma_hs) references hoc_sinh(ma_hs),
foreign key(ma_mh) references mon_hoc(ma_mh)
);new_table

create table giao_vien(
ma_gv VARCHAR(20) PRIMARY KEY,
    ten_gv VARCHAR(20),
   sdt VARCHAR(10)
);
alter table mon_hoc add ma_gv varchar(20);
alter table mon_hoc add constraint fk_ma_gv foreign key(ma_gv) references giao_vien(ma_gv);