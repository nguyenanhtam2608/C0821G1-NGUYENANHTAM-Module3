use quan_ly_sinh_vien;
-- Hiển thị tất cả các sinh viên có tên bắt đầu bảng ký tự ‘h’:
select *
from student
where stu_name like 'h%';


-- Hiển thị danh sách các học viên đang theo học.
select *
from class
where start_date like '____-12-__';

-- Hiển thị tất cả các thông tin môn học có credit trong khoảng từ 3-5.

select *
from subjcet 
where credit >3 and credit<=5;

-- Thay đổi mã lớp(ClassID) của sinh viên có tên ‘Hung’ là 2.
SET SQL_SAFE_UPDATES=0;
update student set class_id = 2
where stu_name ='hung';
SET SQL_SAFE_UPDATES=1;



-- Hiển thị các thông tin: StudentName, SubName, Mark. Dữ liệu sắp xếp theo điểm thi (mark) giảm dần. nếu trùng sắp theo tên tăng dần.
 -- điều kiện của on là trường khóa ngoại phải trùng nhau
select student.stu_name, mark.mark ,subjcet.sub_name
from student 
inner join mark 
on student.std_id = mark.std_id
inner join subjcet 
on student.std_id= subjcet.sub_id
order by mark desc;



