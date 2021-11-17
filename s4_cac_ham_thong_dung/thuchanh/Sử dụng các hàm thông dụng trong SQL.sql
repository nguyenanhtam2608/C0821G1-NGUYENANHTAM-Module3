use quan_ly_sinh_vien;

-- Bước 2: Sử dụng hàm count để hiển thị số lượng sinh viên ở từng nơi
select address,count(std_id) as'Số lượng học viên'
from student
group by address;


-- 3: Tính điểm trung bình các môn học của mỗi học viên bằng cách sử dụng hàm AVG
select s.std_id,s.stu_name, avg(mark)
from student s join mark m
on s.std_id = m.std_id
group by s.std_id, s.stu_name;


-- Bước 4: Hiển thị những bạn học viên co điểm trung bình các môn học lớn hơn 15
-- Đầu tiên hiển thị điểm trung bình các môn học của mỗi học viên
select s.std_id,s.stu_name, avg(mark)
from student s join mark m
on s.std_id = m.std_id
group by s.std_id, s.stu_name
having avg(mark)>15;

-- Bước 5: Hiển thị thông tin các học viên có điểm trung bình lớn nhất.
-- Hiển thị danh sách điểm trung bình của các học viên

select s.std_id,s.stu_name, avg(mark)
from student s join mark m
on s.std_id = m.std_id
group by s.std_id, s.stu_name
having avg(mark) >=	all (select avg(mark) from mark group by mark.std_id);