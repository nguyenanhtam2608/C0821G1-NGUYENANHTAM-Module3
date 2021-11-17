
use quan_ly_sinh_vien;



insert into class 
values (1,'a1','2008-12-02',1); 
insert into class 
values (2,'a2','2009-12-02',1); 
insert into class 
values (3,'a3',current_date,0); 

insert into student(stu_name,address,phone,`status`,class_id)
values('hung1','HN','0987654321',1,1);

insert into student(stu_name,address,`status`,class_id)
values('hung2','HN',1,1);

insert into student(stu_name,address,phone,`status`,class_id)
values('hung3','HCM','0987654321',0,2);

INSERT INTO subjcet
VALUES (1, 'CF', 5, 1),
       (2, 'C', 6, 1),
       (3, 'HDJ', 5, 1),
       (4, 'RDBMS', 10, 1);
       
INSERT INTO Mark (sub_id,std_id, mark, exam_times)
VALUES (1, 1, 8, 1),
       (1, 2, 10, 2),
       (2, 1, 12, 1);