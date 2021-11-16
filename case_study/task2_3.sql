-- 2. Hiển thị thông tin của tất cả nhân viên có trong hệ thống có tên bắt đầu là một trong các ký tự “H”, “T” hoặc “K” và có tối đa 15 kí tự.

use furama;
select * 
from nhan_vien
where ho_ten like '[htk]%' and length(ho_ten) <=15;


-- 3. Hiển thị thông tin của tất cả khách hàng có độ tuổi từ 18 đến 50 tuổi và có địa chỉ ở “Đà Nẵng” hoặc “Quảng Trị”.

SELECT *
from khach_hang
where khach_hang.ngay_sinh > 6400 or khach_hang.ngay_sinh< 17800 and khach_hang.dia_chi = 'QN' or khach_hang.dia_chi = 'DN' ;
