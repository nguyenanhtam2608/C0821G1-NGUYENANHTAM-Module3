drop database if exists quan_ly_sinh_vien;
create database quan_ly_sinh_vien;
use quan_ly_sinh_vien;

create table class(
class_id int not null auto_increment primary key,
class_name varchar(60) not null,
start_date date not null,
`status` bit
);

create table student(
std_id int not null auto_increment primary key,
stu_name varchar(50) not null,
address varchar(50),
phone varchar(20),
`status` bit,
class_id int not null,
foreign key(class_id) references class(class_id)
);

create table subjcet(
sub_id int not null auto_increment primary key,
sub_name varchar(50) not null ,
credit tinyint not null default 1 check (credit>=1),
`status` bit             default 1
);

create table mark (
    mark_id INT NOT NULL AUTO_INCREMENT PRIMARY KEY,
    sub_id int not null,
    std_id  INT NOT NULL,
    mark FLOAT  DEFAULT 0 CHECK ( mark BETWEEN 0 AND 100),
    exam_times TINYINT DEFAULT 1,
    unique (sub_id,std_id),
      FOREIGN KEY (sub_id) REFERENCES subjcet (sub_id),
    FOREIGN KEY (std_id) REFERENCES student (std_id)
    );
    

 



