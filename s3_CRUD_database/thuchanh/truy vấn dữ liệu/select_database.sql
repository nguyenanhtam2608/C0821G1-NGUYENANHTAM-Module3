use quan_ly_sinh_vien;
select* from student; 

select *
from student
where `status` =true;

select *
from subjcet
where credit <10;

select s.std_id,s.stu_name,c.class_name
from student s join class c on s.class_id = c.class_id
where c.class_name = 'a1';


select *
from student s join mark m on s.std_id = m.std_id join subjcet sub  on m.sub_id = sub .sub_id
where sub.sub_name = "cf"
