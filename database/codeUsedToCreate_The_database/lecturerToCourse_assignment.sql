CREATE TABLE lecturerToCourse_assignment(
	lecturer_info_id INT NOT NULL,
	course_info_id INT NOT NULL,
	PRIMARY KEY(lecturer_info_id, course_info_id),
	FOREIGN KEY(lecturer_info_id) REFERENCES lecturer_info(lecturer_id) ON UPDATE CASCADE,
	FOREIGN KEY(course_info_id) REFERENCES course(course_id) ON UPDATE CASCADE
);

insert into lecturerToCourse_assignment (lecturer_info_id, course_info_id)
values (1, 1);
insert into lecturerToCourse_assignment (lecturer_info_id, course_info_id) values (2, 2);
insert into lecturerToCourse_assignment (lecturer_info_id, course_info_id) values (3, 3);
insert into lecturerToCourse_assignment (lecturer_info_id, course_info_id) values (4, 4);
insert into lecturerToCourse_assignment (lecturer_info_id, course_info_id) values (5, 5);
insert into lecturerToCourse_assignment (lecturer_info_id, course_info_id) values (6, 6);
insert into lecturerToCourse_assignment (lecturer_info_id, course_info_id) values (7, 7);
insert into lecturerToCourse_assignment (lecturer_info_id, course_info_id) values (8, 8);
insert into lecturerToCourse_assignment (lecturer_info_id, course_info_id) values (9, 9);
insert into lecturerToCourse_assignment (lecturer_info_id, course_info_id) values (10, 10);
insert into lecturerToCourse_assignment (lecturer_info_id, course_info_id) values (11, 1);
insert into lecturerToCourse_assignment (lecturer_info_id, course_info_id) values (12, 2);
insert into lecturerToCourse_assignment (lecturer_info_id, course_info_id) values (13, 3);
insert into lecturerToCourse_assignment (lecturer_info_id, course_info_id) values (14, 4);
insert into lecturerToCourse_assignment (lecturer_info_id, course_info_id) values (15, 5);
insert into lecturerToCourse_assignment (lecturer_info_id, course_info_id) values (16, 6);
insert into lecturerToCourse_assignment (lecturer_info_id, course_info_id) values (17, 7);
insert into lecturerToCourse_assignment (lecturer_info_id, course_info_id) values (18, 8);
insert into lecturerToCourse_assignment (lecturer_info_id, course_info_id) values (19, 9);
insert into lecturerToCourse_assignment (lecturer_info_id, course_info_id) values (19, 10);
insert into lecturerToCourse_assignment (lecturer_info_id, course_info_id) values (18, 10);
insert into lecturerToCourse_assignment (lecturer_info_id, course_info_id) values (12, 10);
insert into lecturerToCourse_assignment (lecturer_info_id, course_info_id) values (3, 10);
insert into lecturerToCourse_assignment (lecturer_info_id, course_info_id) values (5, 8);
insert into lecturerToCourse_assignment (lecturer_info_id, course_info_id) values (6, 10);
insert into lecturerToCourse_assignment (lecturer_info_id, course_info_id) values (9, 1);
insert into lecturerToCourse_assignment (lecturer_info_id, course_info_id) values (2, 7);
insert into lecturerToCourse_assignment (lecturer_info_id, course_info_id) values (3, 4);
insert into lecturerToCourse_assignment (lecturer_info_id, course_info_id) values (4, 9);
insert into lecturerToCourse_assignment (lecturer_info_id, course_info_id) values (5, 2);
insert into lecturerToCourse_assignment (lecturer_info_id, course_info_id) values (7, 2);
