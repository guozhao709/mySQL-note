/*
create database if not exists book_libs character set utf8mb4 collate utf8mb4_0900_as_cs;

use book_libs;
create table if not exists books(
book_name varchar(20) comment'this is book`s name.',
book_price double(4,1) comment'this is book`s price',
book_num int comment'this is book`s number'
)charset = utf8mb4 comment'this is book`s table.';
*/

/*
create database if not exists ddl_dl character set utf8mb4;
use ddl_dl;
create table if not exists tl(
	tl_age tinyint unsigned,
	tl_id bigint unsigned
);
*/
/*
use ddl_dl;
create table if not exists t2(
	login_date datetime default current_timestamp,
	update_date datetime default current_timestamp on update current_timestamp
)
*/
/*
create database if not exists book_libs character set utf8mb4 collate utf8mb4_0900_as_cs;
use book_libs;
create table if not exists student(
	stu_name varchar(20),
	stu_age tinyint unsigned,
	stu_tall float(5,2),
	stu_register_time datetime default current_timestamp,
	stu_update_time datetime default current_timestamp on update current_timestamp
)
*/
/*
use ddl_dl;
create table if not exists employees(
	emp_num int(11),
	last_name varchar(50),
	first_name varchar(50),
	mobile varchar(25),
	my_code int,
	job_title varchar(50),
	birth date,
	note varchar(255),
	sex varchar(5)
);
*/

/*
alter table employees modify mobile varchar(25) after my_code;
ALTER TABLE employees change birth birthday date;
ALTER TABLE employees modify sex char(1);
alter table employees drop note;
alter table employees add fav_act varchar(100);
ALTER TABLE employees rename employees_info;
*/

/*
use book_libs;
create table if not exists employees(
	emp_num int(11),
	last_name varchar(50),
	first_name varchar(50),
	mobile varchar(25),
	my_code int,
	job_title varchar(50),
	birth date,
	note varchar(255),
	sex varchar(5)
);

alter table employees modify mobile varchar(25) after my_code;
ALTER TABLE employees change birth birthday date;
alter table employees modify sex char(1);
alter table employees drop note;
ALTER TABLE employees add fav_act varchar(100);
alter table employees rename employees_info;
*/

#创建数据库dml_d1
CREATE DATABASE IF NOT EXISTS dml_d1;
#指定使用数据库
USE dml_d1;

CREATE TABLE IF NOT EXISTS students (
stu_id INT COMMENT'学号',
stu_name VARCHAR(100) COMMENT'名字',
stu_age TINYINT UNSIGNED COMMENT'年龄',
stu_birthday DATE COMMENT'生日',
stu_height DECIMAL(4,1) DEFAULT 200 COMMENT'身高,保留一位小数'

);

INSERT INTO students(stu_id, stu_name, stu_age, stu_birthday, stu_height) VALUES(1, 'guozhao', 18, '2006-07-09', 183.1);

INSERT INTO students VALUES(2, 'cuihua', 19, '2000-09-01', '200.1');


-- 插入学生信息到students表
INSERT INTO students (stu_id, stu_name, stu_age, stu_birthday, stu_height)
VALUES
(6,'张三',21,'2002-05-10',175.5),
(7,'李四',20,'2003-02-15',168.0),
(8,'王五',22,'2001-09-20',180.2),
(9,'赵六',19,'2004-03-08',165.8),
(10,'钱七',23,'2000-12-01',172.3),
(11,'孙八',20,'2003-06-25',160.5),
(12,'周九',21,'2002-11-18',175.0),
(13,'吴十',22,'2001-04-30',168.7),
(14,'郑十一',19,'2004-08-12',185.5),
(15,'王十二',23,'2000-07-05',170.1);



UPDATE students
SET stu_name = '黄六'
WHERE stu_id = 8;

UPDATE students
SET stu_height = stu_height + 2
WHERE stu_age < 20;

UPDATE students
SET stu_age = stu_age + 1;





