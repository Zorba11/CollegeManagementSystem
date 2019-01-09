create table login_info(user_name varchar2(30),password varchar2(30));

insert into login_info values('tony','stark123');

create table students(stud_id varchar2(30),stud_fname varchar2(30),stud_lname varchar2(30),stud_course varchar2(30),stud_grade int);

insert into students values('001','Bruce','Wayne','Java Programming','9');

insert into students values('002','Tony','Stark','Machine Learning','9');

insert into students values('003','Richard','Branson','Business Intelligence','8');

insert into students values('004','Steve','Jobs','Digital Marketing','7');

commit;

select * from students;

select * from login_info;

