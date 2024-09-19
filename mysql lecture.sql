create database mwf_9_11;

use mwf_9_11;

create table student (
std_id int,
std_name varchar(100),
std_email varchar(100),
std_phone varchar(11),
std_age varchar(100)
);
create table facuality (
fac_id int,
fac_name varchar(100),
fac_email varchar(100)
);
create table course (
course_id int,
course_name varchar(100),
fac_email varchar(100)
);





