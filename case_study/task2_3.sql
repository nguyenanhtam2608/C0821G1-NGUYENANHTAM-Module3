-- 2. Hiển thị thông tin của tất cả nhân viên có trong hệ thống có tên bắt đầu là một trong các ký tự “H”, “T” hoặc “K” và có tối đa 15 kí tự.

use furama;
select * 
from nhan_vien
where ( ho_ten like 't%' or ho_ten like 'h%' or ho_ten like 'k%') and length(ho_ten) <=15;


-- 3. Hiển thị thông tin của tất cả khách hàng có độ tuổi từ 18 đến 50 tuổi và có địa chỉ ở “Đà Nẵng” hoặc “Quảng Trị”.
 

SELECT round(datediff(CURDATE() , ngay_sinh) /365,0) as tuoi , ho_ten
from khach_hang
where dia_chi = 'QN' or dia_chi = 'DN' 
having (tuoi >= 18 and tuoi <60) ;

-- round(datediff(CURDATE() , ngay_sinh) /365,0) = tuổi thông qua từ ' as '
-- having thì đi vs as 

-- tast 4
-- Đếm xem tương ứng với mỗi khách hàng đã từng đặt phòng bao nhiêu lần.
--  Kết quả hiển thị được sắp xếp tăng dần theo số lần đặt phòng của khách hàng.
--  Chỉ đếm những khách hàng nào có Tên loại khách hàng là “Diamond”.


	select kh.ma_khach_hang, kh.ma_loai_khach, kh.ho_ten, kh.ngay_sinh,
	kh.gioi_tinh,  kh.sdt, kh.email, kh.dia_chi, lk.ten_loai_khach,
	count(ten_loai_khach) as "so luong"
	from khach_hang kh join loai_khach lk on kh.ma_loai_khach = lk.ma_loai_khach
	group by kh.ma_khach_hang
	having lk.ten_loai_khach = "Diamond"
	order by count(ten_loai_khach) asc;
-- task 5;
select * 
from loai_khach;
select *
from khach_hang;
select *
from hop_dong;
select *
from hop_dong_chi_tiet;

select h.ma_khach_hang , k.ho_ten, h.ma_hop_dong, d.ma_dich_vu, h.ngay_lam_hop_dong,h.ngay_ket_thuc, (d.chi_phi_thue + hd.so_luong * dv.gia) as tong_tien
from hop_dong h
inner join khach_hang k on h.ma_khach_hang = k.ma_khach_hang 
inner join dich_vu d on h.ma_dich_vu = d.ma_dich_vu
inner join hop_dong_chi_tiet hd on h.ma_hop_dong = hd.ma_hop_dong
inner join dich_vu_di_kem dv on hd.ma_dich_vu_di_kem = dv.ma_dich_vu_di_kem;



-- task 6;


select d.ma_dich_vu, d.ten_dich_vu, d.dien_tich,d.chi_phi_thue,l.ten_loai_dich_vu ,round(datediff(CURDATE(),h.ngay_lam_hop_dong)/365,0) as thoi_gian
from dich_vu d 
inner join loai_dich_vu l on d.ma_loai_dich_vu = l.ma_loai_dich_vu
inner join hop_dong h on d.ma_dich_vu  = h.ma_dich_vu
having thoi_gian <=2 and thoi_gian>= 0;

-- task 8 
-- Hiển thị thông tin ho_ten khách hàng có trong hệ thống, với yêu cầu ho_ten không trùng nhau.

select distinct ho_ten
from khach_hang;

-- task 20 
-- Hiển thị thông tin của tất cả các nhân viên và khách hàng có trong hệ thống,
-- thông tin hiển thị bao gồm id (ma_nhan_vien, ma_khach_hang), ho_ten, email, so_dien_thoai, ngay_sinh, dia_chi.

select ma_nhan_vien,ho_ten, email, sdt, ngay_sinh, dia_chi
from nhan_vien
union all 
select ma_khach_hang,ho_ten, email, sdt, ngay_sinh, dia_chi
from khach_hang



