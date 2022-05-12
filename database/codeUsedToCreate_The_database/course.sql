create table course (
	course_id BIGSERIAL NOT NULL PRIMARY KEY,
	course_name VARCHAR(50) NOT NULL,
	course_fee float(2) NOT NULL
);
insert into course (course_name, course_fee) values ( 'Digital Circuits', 65.80);
insert into course (course_name, course_fee) values ( 'C++', 123.64);
insert into course (course_name, course_fee) values ('Java', 191.94);
insert into course (course_name, course_fee) values ('Matlab', 132.58);
insert into course (course_name, course_fee) values ( 'Data Structures', 154.50);
insert into course (course_name, course_fee) values ( 'Mechatronix', 111.13);
insert into course (course_name, course_fee) values ( 'Software Engineering', 90.24);
insert into course (course_name, course_fee) values ( 'Systems Architecture', 187.69);
insert into course (course_name, course_fee) values ( 'Artificial Intelligence', 69.70);
insert into course (course_name, course_fee) values ( 'Machine Learning', 182.47);
