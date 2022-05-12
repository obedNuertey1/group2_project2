CREATE TABLE course_enroll(
	course_info_id INT NOT NULL,
	student_info_id VARCHAR(50) NOT NULL,
	PRIMARY KEY(course_info_id, student_info_id),
	FOREIGN KEY(course_info_id) REFERENCES course(course_id) ON DELETE CASCADE,
	FOREIGN KEY(student_info_id) REFERENCES student_info(student_id) ON DELETE CASCADE
);

insert into course_enroll values(1, '10885671');
insert into course_enroll values(10, '10903301');
insert into course_enroll values(8, '10904196');
insert into course_enroll values(2, '10895794');
insert into course_enroll values(3, '10909989');
insert into course_enroll values(7, '10885857');
insert into course_enroll values(9, '10880660');
insert into course_enroll values(1, '10922580');
insert into course_enroll values(10, '10890540');
insert into course_enroll values(8, '10912305');
insert into course_enroll values(2, '10889628');
insert into course_enroll values(4, '10879657');
insert into course_enroll values(3, '10889220');
insert into course_enroll values(6, '10895681');
insert into course_enroll values(9, '10869956');
insert into course_enroll values(1, '10885854');
insert into course_enroll values(10, '10878722');
insert into course_enroll values(8, '10869594');
insert into course_enroll values(7, '10900057');
insert into course_enroll values(9, '10913721');
insert into course_enroll values(1, '10893769');
insert into course_enroll values(10, '10920593');
insert into course_enroll values(8, '10898029');
insert into course_enroll values(2, '10889611');
insert into course_enroll values(4, '10908786');
insert into course_enroll values(3, '10896031');
insert into course_enroll values(6, '10906967');
insert into course_enroll values(7, '10893090');
insert into course_enroll values(9, '10867516');
insert into course_enroll values(7, '10924072');
insert into course_enroll values(9, '10863450');
insert into course_enroll values(3, '10885671');
insert into course_enroll values(2, '10903301');
insert into course_enroll values(1, '10904196');
insert into course_enroll values(9, '10895794');
insert into course_enroll values(8, '10908786');
insert into course_enroll values(7, '10909989');
insert into course_enroll values(6, '10908266');
insert into course_enroll values(5, '10885857');
insert into course_enroll values(4, '10880660');
insert into course_enroll values(10, '10922580');
insert into course_enroll values(3, '10890540');
insert into course_enroll values(2, '10912305');
insert into course_enroll values(1, '10889628');
insert into course_enroll values(10, '10879657');
insert into course_enroll values(9, '10889220');
insert into course_enroll values(8, '10895681');
insert into course_enroll values(7, '10867736');
insert into course_enroll values(6, '10869956');
insert into course_enroll values(5, '10885854');
insert into course_enroll values(1, '10878722');
insert into course_enroll values(3, '10869594');
insert into course_enroll values(8, '10900057');
insert into course_enroll values(10, '10913721');
insert into course_enroll values(2, '10893769');
insert into course_enroll values(3, '10920593');
insert into course_enroll values(4, '10898029');
insert into course_enroll values(3, '10889611');
insert into course_enroll values(9, '10896031');
insert into course_enroll values(10, '10906967');
insert into course_enroll values(9, '10893090');
insert into course_enroll values(2, '10867516');
insert into course_enroll values(3, '10924072');
insert into course_enroll values(4, '10863450');