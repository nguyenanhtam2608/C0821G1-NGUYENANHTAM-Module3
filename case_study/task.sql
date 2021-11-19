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
select k.ho_ten,count(h.ma_hop_dong) as so_lan_dat_phong
from khach_hang k 
inner join hop_dong h
on k.ma_khach_hang =h.ma_khach_hang
inner join loai_khach l 
on k.ma_loai_khach = l.ma_loai_khach
where l.ten_loai_khach = "diamond"
group by k.ma_khach_hang 
order by so_lan_dat_phong;

select *
from khach_hang;
select *
from hop_dong;
select *
from loai_khach;





-- task 5;
select * 
from loai_khach;
select *
from khach_hang;
select *
from hop_dong;      
select *
from hop_dong_chi_tiet;

select h.ma_khach_hang , k.ho_ten, h.ma_hop_dong, d.ma_dich_vu, h.ngay_lam_hop_dong,h.ngay_ket_thuc, sum(d.chi_phi_thue + hd.so_luong * dv.gia) as tong_tien
from hop_dong h
inner join khach_hang k on h.ma_khach_hang = k.ma_khach_hang 
inner join dich_vu d on h.ma_dich_vu = d.ma_dich_vu
inner join hop_dong_chi_tiet hd on h.ma_hop_dong = hd.ma_hop_dong
inner join dich_vu_di_kem dv on hd.ma_dich_vu_di_kem = dv.ma_dich_vu_di_kem
-- gọp thao ma_hop_dong nếu k có group by thì xem như chỉ có 1 ma hop dong thôi
group by h.ma_hop_dong;





-- task 6;
select * from dich_vu;
select * from hop_dong;

select d.ma_dich_vu, d.ten_dich_vu, d.dien_tich,d.chi_phi_thue,l.ten_loai_dich_vu 
from dich_vu d 
inner join loai_dich_vu l on d.ma_loai_dich_vu = l.ma_loai_dich_vu
where not exists(
select h.ma_hop_dong
from hop_dong h
where(h.ngay_lam_hop_dong between '2019-01-01' and '2019-03-01') and  h.ma_dich_vu = d.ma_dich_vu 
);

-- task7
select * from dich_vu;
select * from loai_dich_vu;

select d.ma_dich_vu , d.ten_dich_vu , d.dien_tich,d.chi_phi_thue,l.ten_loai_dich_vu
from dich_vu d 
inner join loai_dich_vu l on d.ma_loai_dich_vu = l.ma_loai_dich_vu
where exists(
select h.ma_hop_dong
from hop_dong h
where(h.ngay_lam_hop_dong between '2018-01-01' and '2018-12-31')and h.ma_dich_vu = d.ma_dich_vu ) 
and not exists(
select h.ma_hop_dong
from hop_dong h
where(h.ngay_lam_hop_dong between '2019-01-01' and '2019-12-31') and  h.ma_dich_vu = d.ma_dich_vu 
);

-- task 8 
-- Hiển thị thông tin ho_ten khách hàng có trong hệ thống, với yêu cầu ho_ten không trùng nhau.
select distinct ho_ten
from khach_hang;

select ho_ten 
from khach_hang
group by ho_ten;

select ho_ten
from khach_hang 
union 
select ho_ten 
from khach_hang;





-- task 9 
-- Thực hiện thống kê doanh thu theo tháng, nghĩa là tương ứng với mỗi tháng 
-- trong năm 2019 thì sẽ có bao nhiêu khách hàng thực hiện đặt phòng.

select month((h.ngay_lam_hop_dong)) as thang ,count(h.ma_hop_dong) as so_lan_dat_phong
from khach_hang k 
inner join hop_dong h
on k.ma_khach_hang =h.ma_khach_hang
inner join loai_khach l 
on k.ma_loai_khach = l.ma_loai_khach
where (h.ngay_lam_hop_dong between '2019-01-01' and '2019-12-31')
group by month(h.ngay_lam_hop_dong) 
order by h.ngay_lam_hop_dong ;
	
    
-- task 10
select * 
from hop_dong;
select * from dich_vu_di_kem;

select  h.ma_hop_dong,h.ngay_lam_hop_dong,h.ngay_ket_thuc,h.tien_dat_coc ,sum(v.don_vi) as so_luong_dich_vu_di_kem
from hop_dong h 
inner join hop_dong_chi_tiet hd on h.ma_hop_dong = hd.ma_hop_dong
 inner join dich_vu_di_kem v on hd.ma_dich_vu_di_kem = v.ma_dich_vu_di_kem
 group by h.ma_hop_dong;
 
 -- task 11 

 select v.ma_dich_vu_di_kem,v.ten_dich_vu_di_kem,v.gia,v.don_vi,v.trang_thai
from hop_dong h 
inner join hop_dong_chi_tiet hd on h.ma_hop_dong = hd.ma_hop_dong
 inner join dich_vu_di_kem v on hd.ma_dich_vu_di_kem = v.ma_dich_vu_di_kem
 inner join khach_hang kh on h.ma_khach_hang = kh.ma_khach_hang
  inner join loai_khach lk on kh.ma_loai_khach = lk.ma_loai_khach
  where lk.ten_loai_khach = 'diamond' and (kh.dia_chi ='vinh' or kh.dia_chi ='dn');
 
 
 -- task 12
		 select h.ma_hop_dong , nv.ho_ten as ho_ten_nhan_vien, kh.ho_ten,kh.sdt , dv.ten_dich_vu ,sum(v.don_vi) as so_luong_dich_vu_di_kem ,h.tien_dat_coc
		 from hop_dong h
		 inner join hop_dong_chi_tiet hd on h.ma_hop_dong = hd.ma_hop_dong
		 inner join dich_vu_di_kem v on hd.ma_dich_vu_di_kem = v.ma_dich_vu_di_kem
		 inner join khach_hang kh on h.ma_khach_hang = kh.ma_khach_hang
		 inner join loai_khach lk on kh.ma_loai_khach = lk.ma_loai_khach
		 inner join nhan_vien nv on h.ma_nhan_vien = nv.ma_nhan_vien
         inner join dich_vu dv on h.ma_dich_vu = dv.ma_dich_vu
         where (h.ngay_lam_hop_dong between '2019-10-01' and '2019-12-01') and h.ma_hop_dong = hd.ma_hop_dong
                  group by h.ma_hop_dong
         and not exists(
         select h.ma_hop_dong , nv.ho_ten as ho_ten_nhan_vien, kh.ho_ten,kh.sdt , dv.ten_dich_vu ,sum(v.don_vi) as so_luong_dich_vu_di_kem ,h.tien_dat_coc
		 from hop_dong h
		 inner join hop_dong_chi_tiet hd on h.ma_hop_dong = hd.ma_hop_dong
		 inner join dich_vu_di_kem v on hd.ma_dich_vu_di_kem = v.ma_dich_vu_di_kem
		 inner join khach_hang kh on h.ma_khach_hang = kh.ma_khach_hang
		 inner join loai_khach lk on kh.ma_loai_khach = lk.ma_loai_khach
		 inner join nhan_vien nv on h.ma_nhan_vien = nv.ma_nhan_vien
         inner join dich_vu dv on h.ma_dich_vu = dv.ma_dich_vu
         where (h.ngay_lam_hop_dong between '2019-01-01' and '2019-06-01') and h.ma_hop_dong = hd.ma_hop_dong
            group by h.ma_hop_dong
            );
		
-- task 13
select v.ten_dich_vu_di_kem ,count(v.ma_dich_vu_di_kem) as so_lan
  from hop_dong h
		 inner join hop_dong_chi_tiet hd on h.ma_hop_dong = hd.ma_hop_dong
		 inner join dich_vu_di_kem v on hd.ma_dich_vu_di_kem = v.ma_dich_vu_di_kem
         group by v.ten_dich_vu_di_kem 
         order by so_lan desc
         limit 1;
         
         
-- task 14
select h.ma_hop_dong, l.ten_loai_dich_vu, v.ten_dich_vu_di_kem ,count(v.ma_dich_vu_di_kem) as so_lan_su_dung
  from hop_dong h
		 inner join hop_dong_chi_tiet hd on h.ma_hop_dong = hd.ma_hop_dong
		 inner join dich_vu_di_kem v on hd.ma_dich_vu_di_kem = v.ma_dich_vu_di_kem
         inner join dich_vu dv on h.ma_dich_vu = dv.ma_dich_vu
         inner join loai_dich_vu l on 	dv.ma_loai_dich_vu = l.ma_loai_dich_vu
		 group by v.ten_dich_vu_di_kem 
         having so_lan_su_dung = 1;
         
         
-- task 15 
select n.ma_nhan_vien ,n.ho_ten,t.ten_trinh_do,b.ten_bo_phan,n.sdt,n.dia_chi ,count(h.ma_nhan_vien) as so_luong_lam_hop_dong
from nhan_vien n
inner join vi_tri v on n.ma_vi_tri = v.ma_vi_tri
inner join trinh_do t on n.ma_trinh_do = t.ma_trinh_do
inner join bo_phan b on n.ma_bo_Phan = b.ma_bo_phan
inner join hop_dong h on n.ma_nhan_vien = h.ma_nhan_vien 
where h.ngay_lam_hop_dong between '2018-01-01' and '2019-01-01'
group by h.ma_nhan_vien
having so_luong_lam_hop_dong <=3;

-- task 16
         

select n.ma_nhan_vien ,n.ho_ten,t.ten_trinh_do,b.ten_bo_phan,n.sdt,n.dia_chi ,count(h.ma_nhan_vien) as so_luong_lam_hop_dong
from nhan_vien n
inner join vi_tri v on n.ma_vi_tri = v.ma_vi_tri
inner join trinh_do t on n.ma_trinh_do = t.ma_trinh_do
inner join bo_phan b on n.ma_bo_Phan = b.ma_bo_phan
inner join hop_dong h on n.ma_nhan_vien = h.ma_nhan_vien 
where h.ngay_lam_hop_dong between '2017-01-01' and '2019-01-01'
group by h.ma_nhan_vien
having so_luong_lam_hop_dong =0  ;


SET FOREIGN_KEY_CHECKS=0;-- vô hiệu hóa khóa ngoại
delete s.*
from nhan_vien n 
inner join vi_tri v on n.ma_vi_tri = v.ma_vi_tri
inner join trinh_do t on n.ma_trinh_do = t.ma_trinh_do
inner join bo_phan b on n.ma_bo_Phan = b.ma_bo_phan
inner join hop_dong h on n.ma_nhan_vien = h.ma_nhan_vien 



        

		

         
         
         
		



-- task 20 
-- Hiển thị thông tin của tất cả các nhân viên và khách hàng có trong hệ thống,
-- thông tin hiển thị bao gồm id (ma_nhan_vien, ma_khach_hang), ho_ten, email, so_dien_thoai, ngay_sinh, dia_chi.

select ma_nhan_vien,ho_ten, email, sdt, ngay_sinh, dia_chi
from nhan_vien
union all 
select ma_khach_hang,ho_ten, email, sdt, ngay_sinh, dia_chi
from khach_hang



