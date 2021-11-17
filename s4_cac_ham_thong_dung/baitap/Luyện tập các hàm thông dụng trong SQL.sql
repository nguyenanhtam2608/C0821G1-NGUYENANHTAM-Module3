use quan_ly_sinh_vien;

-- Hiển thị tất cả các thông tin môn học (bảng subject) có credit lớn nhất.
-- Hiển thị các thông tin môn học có điểm thi lớn nhất.
-- Hiển thị các thông tin sinh viên và điểm trung bình của mỗi sinh viên, xếp hạng theo thứ tự điểm giảm dần;

-- Hiển thị tất cả các thông tin môn học (bảng subject) có credit lớn nhất.
select *
from subjcet
where credit =(
select max(credit) 
from subjcet
);


-- Hiển thị các thông tin môn học có điểm thi lớn nhất.

select * 
from mark
where mark = (
select max(mark)
from mark
);


-- Hiển thị các thông tin sinh viên và điểm trung bình của mỗi sinh viên, xếp hạng theo thứ tự điểm giảm dần;

select s.std_id ,s.stu_name, avg(mark)
from mark m inner join student s on 
m.std_id = s.std_id
group by s.std_id ,s.stu_name;

