create table lectures (
	student_info_id VARCHAR(50) NOT NULL,
	lecturer_info_id INT NOT NULL,
	lecture_room VARCHAR(100) NOT NULL,
	PRIMARY KEY(student_info_id, lecturer_info_id),
	FOREIGN KEY(student_info_id) REFERENCES student_info(student_id) ON DELETE CASCADE,
	FOREIGN KEY(lecturer_info_id) REFERENCES lecturer_info(lecturer_id) ON DELETE CASCADE
	
);

insert into lectures (lecturer_info_id, student_info_id, lecture_room) values (1, '10885671', 'Nlounge');
insert into lectures (lecturer_info_id, student_info_id, lecture_room) values (2, '10885671','Divanoodle');
insert into lectures (lecturer_info_id, student_info_id, lecture_room) values (3, '10885671','Oyope');
insert into lectures (lecturer_info_id, student_info_id, lecture_room) values (4, '10885671','Thoughtstorm');
insert into lectures (lecturer_info_id, student_info_id, lecture_room) values (5, '10885671','Photolist');
insert into lectures (lecturer_info_id, student_info_id, lecture_room) values (6, '10885671','Pixoboo');
insert into lectures (lecturer_info_id, student_info_id, lecture_room) values (7, '10885671','Fadeo');
insert into lectures (lecturer_info_id, student_info_id, lecture_room) values (8, '10885671','Rhyzio');
insert into lectures (lecturer_info_id, student_info_id, lecture_room) values (9, '10885671','Demimbu');
insert into lectures (lecturer_info_id, student_info_id, lecture_room) values (10, '10885671','Myworks');
insert into lectures (lecturer_info_id, student_info_id, lecture_room) values (11, '10885671','Jaxworks');
insert into lectures (lecturer_info_id, student_info_id, lecture_room) values (12, '10903301','Teklist');
insert into lectures (lecturer_info_id, student_info_id, lecture_room) values (13, '10903301','Quatz');
insert into lectures (lecturer_info_id, student_info_id, lecture_room) values (14, '10903301','Cogilith');
insert into lectures (lecturer_info_id, student_info_id, lecture_room) values (15, '10903301','Jabbersphere');
insert into lectures (lecturer_info_id, student_info_id, lecture_room) values (16, '10903301','Kaymbo');
insert into lectures (lecturer_info_id, student_info_id, lecture_room) values (17, '10903301','Realfire');
insert into lectures (lecturer_info_id, student_info_id, lecture_room) values (18, '10903301','Podcat');
insert into lectures (lecturer_info_id, student_info_id, lecture_room) values (19, '10903301','Zoombeat');
insert into lectures (lecturer_info_id, student_info_id, lecture_room) values (20, '10903301','Mycat');
insert into lectures (lecturer_info_id, student_info_id, lecture_room) values (1, '10904196', 'Nlounge');
insert into lectures (lecturer_info_id, student_info_id, lecture_room) values (2, '10904196','Divanoodle');
insert into lectures (lecturer_info_id, student_info_id, lecture_room) values (3, '10904196','Oyope');
insert into lectures (lecturer_info_id, student_info_id, lecture_room) values (4, '10904196','Thoughtstorm');
insert into lectures (lecturer_info_id, student_info_id, lecture_room) values (5, '10904196','Photolist');
insert into lectures (lecturer_info_id, student_info_id, lecture_room) values (6, '10904196','Pixoboo');
insert into lectures (lecturer_info_id, student_info_id, lecture_room) values (7, '10904196','Fadeo');
insert into lectures (lecturer_info_id, student_info_id, lecture_room) values (8, '10904196','Rhyzio');
insert into lectures (lecturer_info_id, student_info_id, lecture_room) values (9, '10895794','Demimbu');
insert into lectures (lecturer_info_id, student_info_id, lecture_room) values (10, '10895794','Myworks');
insert into lectures (lecturer_info_id, student_info_id, lecture_room) values (11, '10895794','Jaxworks');
insert into lectures (lecturer_info_id, student_info_id, lecture_room) values (12, '10895794','Teklist');
insert into lectures (lecturer_info_id, student_info_id, lecture_room) values (13, '10908786','Quatz');
insert into lectures (lecturer_info_id, student_info_id, lecture_room) values (1, '10909989', 'Nlounge');
insert into lectures (lecturer_info_id, student_info_id, lecture_room) values (2, '10909989','Divanoodle');
insert into lectures (lecturer_info_id, student_info_id, lecture_room) values (3, '10909989','Oyope');
insert into lectures (lecturer_info_id, student_info_id, lecture_room) values (4, '10909989','Thoughtstorm');
insert into lectures (lecturer_info_id, student_info_id, lecture_room) values (5, '10909989','Photolist');
insert into lectures (lecturer_info_id, student_info_id, lecture_room) values (6, '10908266','Pixoboo');
insert into lectures (lecturer_info_id, student_info_id, lecture_room) values (7, '10908266','Fadeo');
insert into lectures (lecturer_info_id, student_info_id, lecture_room) values (8, '10908266','Rhyzio');
insert into lectures (lecturer_info_id, student_info_id, lecture_room) values (9, '10908266','Demimbu');
insert into lectures (lecturer_info_id, student_info_id, lecture_room) values (10, '10908266','Myworks');
insert into lectures (lecturer_info_id, student_info_id, lecture_room) values (11, '10908266','Jaxworks');
insert into lectures (lecturer_info_id, student_info_id, lecture_room) values (12, '10885857','Teklist');
insert into lectures (lecturer_info_id, student_info_id, lecture_room) values (13, '10885857','Quatz');
insert into lectures (lecturer_info_id, student_info_id, lecture_room) values (14, '10885857','Cogilith');
insert into lectures (lecturer_info_id, student_info_id, lecture_room) values (15, '10885857','Jabbersphere');
insert into lectures (lecturer_info_id, student_info_id, lecture_room) values (16, '10885857','Kaymbo');
insert into lectures (lecturer_info_id, student_info_id, lecture_room) values (17, '10885857','Realfire');
insert into lectures (lecturer_info_id, student_info_id, lecture_room) values (18, '10880660','Podcat');
insert into lectures (lecturer_info_id, student_info_id, lecture_room) values (19, '10880660','Zoombeat');
insert into lectures (lecturer_info_id, student_info_id, lecture_room) values (20, '10880660','Mycat');
insert into lectures (lecturer_info_id, student_info_id, lecture_room) values (1, '10922580', 'Nlounge');
insert into lectures (lecturer_info_id, student_info_id, lecture_room) values (2, '10922580','Divanoodle');
insert into lectures (lecturer_info_id, student_info_id, lecture_room) values (3, '10922580','Oyope');
insert into lectures (lecturer_info_id, student_info_id, lecture_room) values (4, '10922580','Thoughtstorm');
insert into lectures (lecturer_info_id, student_info_id, lecture_room) values (5, '10922580','Photolist');
insert into lectures (lecturer_info_id, student_info_id, lecture_room) values (6, '10890540','Pixoboo');
insert into lectures (lecturer_info_id, student_info_id, lecture_room) values (7, '10890540','Fadeo');
insert into lectures (lecturer_info_id, student_info_id, lecture_room) values (8, '10890540','Rhyzio');
insert into lectures (lecturer_info_id, student_info_id, lecture_room) values (9, '10890540','Demimbu');
insert into lectures (lecturer_info_id, student_info_id, lecture_room) values (10, '10890540','Myworks');
insert into lectures (lecturer_info_id, student_info_id, lecture_room) values (11, '10912305','Jaxworks');
insert into lectures (lecturer_info_id, student_info_id, lecture_room) values (12, '10912305','Teklist');
insert into lectures (lecturer_info_id, student_info_id, lecture_room) values (13, '10912305','Quatz');
insert into lectures (lecturer_info_id, student_info_id, lecture_room) values (14, '10912305','Cogilith');
insert into lectures (lecturer_info_id, student_info_id, lecture_room) values (15, '10912305','Jabbersphere');
insert into lectures (lecturer_info_id, student_info_id, lecture_room) values (16, '10912305','Kaymbo');
insert into lectures (lecturer_info_id, student_info_id, lecture_room) values (17, '10889628','Realfire');
insert into lectures (lecturer_info_id, student_info_id, lecture_room) values (18, '10889628','Podcat');
insert into lectures (lecturer_info_id, student_info_id, lecture_room) values (19, '10889628','Zoombeat');
insert into lectures (lecturer_info_id, student_info_id, lecture_room) values (20, '10889628','Mycat');
insert into lectures (lecturer_info_id, student_info_id, lecture_room) values (1, '10879657', 'Nlounge');
insert into lectures (lecturer_info_id, student_info_id, lecture_room) values (2, '10879657','Divanoodle');
insert into lectures (lecturer_info_id, student_info_id, lecture_room) values (3, '10879657','Oyope');
insert into lectures (lecturer_info_id, student_info_id, lecture_room) values (4, '10879657','Thoughtstorm');
insert into lectures (lecturer_info_id, student_info_id, lecture_room) values (5, '10889220','Photolist');
insert into lectures (lecturer_info_id, student_info_id, lecture_room) values (6, '10889220','Pixoboo');
insert into lectures (lecturer_info_id, student_info_id, lecture_room) values (7, '10889220','Fadeo');
insert into lectures (lecturer_info_id, student_info_id, lecture_room) values (8, '10889220','Rhyzio');
insert into lectures (lecturer_info_id, student_info_id, lecture_room) values (9, '10889220','Demimbu');
insert into lectures (lecturer_info_id, student_info_id, lecture_room) values (10, '10895681','Myworks');
insert into lectures (lecturer_info_id, student_info_id, lecture_room) values (11, '10895681','Jaxworks');
insert into lectures (lecturer_info_id, student_info_id, lecture_room) values (12, '10895681','Teklist');
insert into lectures (lecturer_info_id, student_info_id, lecture_room) values (13, '10895681','Quatz');
insert into lectures (lecturer_info_id, student_info_id, lecture_room) values (14, '10895681','Cogilith');
insert into lectures (lecturer_info_id, student_info_id, lecture_room) values (15, '10867736','Jabbersphere');
insert into lectures (lecturer_info_id, student_info_id, lecture_room) values (16, '10867736','Kaymbo');
insert into lectures (lecturer_info_id, student_info_id, lecture_room) values (17, '10867736','Realfire');
insert into lectures (lecturer_info_id, student_info_id, lecture_room) values (18, '10867736','Podcat');
insert into lectures (lecturer_info_id, student_info_id, lecture_room) values (19, '10867736','Zoombeat');
insert into lectures (lecturer_info_id, student_info_id, lecture_room) values (20, '10867736','Mycat');
insert into lectures (lecturer_info_id, student_info_id, lecture_room) values (1, '10869956', 'Nlounge');
insert into lectures (lecturer_info_id, student_info_id, lecture_room) values (2, '10869956','Divanoodle');
insert into lectures (lecturer_info_id, student_info_id, lecture_room) values (3, '10869956','Oyope');
insert into lectures (lecturer_info_id, student_info_id, lecture_room) values (4, '10869956','Thoughtstorm');
insert into lectures (lecturer_info_id, student_info_id, lecture_room) values (5, '10885854','Photolist');
insert into lectures (lecturer_info_id, student_info_id, lecture_room) values (6, '10885854','Pixoboo');
insert into lectures (lecturer_info_id, student_info_id, lecture_room) values (7, '10885854','Fadeo');
insert into lectures (lecturer_info_id, student_info_id, lecture_room) values (8, '10885854','Rhyzio');
insert into lectures (lecturer_info_id, student_info_id, lecture_room) values (9, '10885854','Demimbu');
insert into lectures (lecturer_info_id, student_info_id, lecture_room) values (10, '10878722','Myworks');
insert into lectures (lecturer_info_id, student_info_id, lecture_room) values (11, '10878722','Jaxworks');
insert into lectures (lecturer_info_id, student_info_id, lecture_room) values (12, '10878722','Teklist');
insert into lectures (lecturer_info_id, student_info_id, lecture_room) values (13, '10878722','Quatz');
insert into lectures (lecturer_info_id, student_info_id, lecture_room) values (14, '10878722','Cogilith');
insert into lectures (lecturer_info_id, student_info_id, lecture_room) values (15, '10869594','Jabbersphere');
insert into lectures (lecturer_info_id, student_info_id, lecture_room) values (16, '10869594','Kaymbo');
insert into lectures (lecturer_info_id, student_info_id, lecture_room) values (17, '10869594','Realfire');
insert into lectures (lecturer_info_id, student_info_id, lecture_room) values (18, '10869594','Podcat');
insert into lectures (lecturer_info_id, student_info_id, lecture_room) values (19, '10869594','Zoombeat');
insert into lectures (lecturer_info_id, student_info_id, lecture_room) values (20, '10869594','Mycat');
insert into lectures (lecturer_info_id, student_info_id, lecture_room) values (6, '10900057','Pixoboo');
insert into lectures (lecturer_info_id, student_info_id, lecture_room) values (7, '10900057','Fadeo');
insert into lectures (lecturer_info_id, student_info_id, lecture_room) values (8, '10900057','Rhyzio');
insert into lectures (lecturer_info_id, student_info_id, lecture_room) values (9, '10900057','Demimbu');
insert into lectures (lecturer_info_id, student_info_id, lecture_room) values (10, '10913721','Myworks');
insert into lectures (lecturer_info_id, student_info_id, lecture_room) values (11, '10913721','Jaxworks');
insert into lectures (lecturer_info_id, student_info_id, lecture_room) values (12, '10913721','Teklist');
insert into lectures (lecturer_info_id, student_info_id, lecture_room) values (13, '10913721','Quatz');
insert into lectures (lecturer_info_id, student_info_id, lecture_room) values (14, '10913721','Cogilith');
insert into lectures (lecturer_info_id, student_info_id, lecture_room) values (15, '10893769','Jabbersphere');
insert into lectures (lecturer_info_id, student_info_id, lecture_room) values (16, '10893769','Kaymbo');
insert into lectures (lecturer_info_id, student_info_id, lecture_room) values (17, '10893769','Realfire');
insert into lectures (lecturer_info_id, student_info_id, lecture_room) values (18, '10893769','Podcat');
insert into lectures (lecturer_info_id, student_info_id, lecture_room) values (19, '10893769','Zoombeat');
insert into lectures (lecturer_info_id, student_info_id, lecture_room) values (20, '10920593','Mycat');
insert into lectures (lecturer_info_id, student_info_id, lecture_room) values (1, '10920593', 'Nlounge');
insert into lectures (lecturer_info_id, student_info_id, lecture_room) values (2, '10920593','Divanoodle');
insert into lectures (lecturer_info_id, student_info_id, lecture_room) values (3, '10920593','Oyope');
insert into lectures (lecturer_info_id, student_info_id, lecture_room) values (4, '10920593','Thoughtstorm');
insert into lectures (lecturer_info_id, student_info_id, lecture_room) values (5, '10898029','Photolist');
insert into lectures (lecturer_info_id, student_info_id, lecture_room) values (6, '10898029','Pixoboo');
insert into lectures (lecturer_info_id, student_info_id, lecture_room) values (7, '10898029','Fadeo');
insert into lectures (lecturer_info_id, student_info_id, lecture_room) values (8, '10898029','Rhyzio');
insert into lectures (lecturer_info_id, student_info_id, lecture_room) values (9, '10898029','Demimbu');
insert into lectures (lecturer_info_id, student_info_id, lecture_room) values (10, '10889611','Myworks');
insert into lectures (lecturer_info_id, student_info_id, lecture_room) values (11, '10889611','Jaxworks');
insert into lectures (lecturer_info_id, student_info_id, lecture_room) values (12, '10889611','Teklist');
insert into lectures (lecturer_info_id, student_info_id, lecture_room) values (13, '10889611','Quatz');
insert into lectures (lecturer_info_id, student_info_id, lecture_room) values (14, '10889611','Cogilith');
insert into lectures (lecturer_info_id, student_info_id, lecture_room) values (15, '10889611','Jabbersphere');
insert into lectures (lecturer_info_id, student_info_id, lecture_room) values (16, '10908786','Kaymbo');
insert into lectures (lecturer_info_id, student_info_id, lecture_room) values (17, '10908786','Realfire');
insert into lectures (lecturer_info_id, student_info_id, lecture_room) values (18, '10908786','Podcat');
insert into lectures (lecturer_info_id, student_info_id, lecture_room) values (19, '10908786','Zoombeat');
insert into lectures (lecturer_info_id, student_info_id, lecture_room) values (20, '10908786','Mycat');
insert into lectures (lecturer_info_id, student_info_id, lecture_room) values (1, '10896031', 'Nlounge');
insert into lectures (lecturer_info_id, student_info_id, lecture_room) values (2, '10896031','Divanoodle');
insert into lectures (lecturer_info_id, student_info_id, lecture_room) values (3, '10896031','Oyope');
insert into lectures (lecturer_info_id, student_info_id, lecture_room) values (4, '10896031','Thoughtstorm');
insert into lectures (lecturer_info_id, student_info_id, lecture_room) values (5, '10896031','Photolist');
insert into lectures (lecturer_info_id, student_info_id, lecture_room) values (6, '10906967','Pixoboo');
insert into lectures (lecturer_info_id, student_info_id, lecture_room) values (7, '10906967','Fadeo');
insert into lectures (lecturer_info_id, student_info_id, lecture_room) values (8, '10906967','Rhyzio');
insert into lectures (lecturer_info_id, student_info_id, lecture_room) values (9, '10906967','Demimbu');
insert into lectures (lecturer_info_id, student_info_id, lecture_room) values (10, '10906967','Myworks');
insert into lectures (lecturer_info_id, student_info_id, lecture_room) values (11, '10893090','Jaxworks');
insert into lectures (lecturer_info_id, student_info_id, lecture_room) values (12, '10893090','Teklist');
insert into lectures (lecturer_info_id, student_info_id, lecture_room) values (13, '10893090','Quatz');
insert into lectures (lecturer_info_id, student_info_id, lecture_room) values (14, '10893090','Cogilith');
insert into lectures (lecturer_info_id, student_info_id, lecture_room) values (15, '10893090','Jabbersphere');
insert into lectures (lecturer_info_id, student_info_id, lecture_room) values (16, '10867516','Kaymbo');
insert into lectures (lecturer_info_id, student_info_id, lecture_room) values (17, '10867516','Realfire');
insert into lectures (lecturer_info_id, student_info_id, lecture_room) values (18, '10867516','Podcat');
insert into lectures (lecturer_info_id, student_info_id, lecture_room) values (19, '10867516','Zoombeat');
insert into lectures (lecturer_info_id, student_info_id, lecture_room) values (20, '10867516','Mycat');
insert into lectures (lecturer_info_id, student_info_id, lecture_room) values (1, '10924072', 'Nlounge');
insert into lectures (lecturer_info_id, student_info_id, lecture_room) values (2, '10924072','Divanoodle');
insert into lectures (lecturer_info_id, student_info_id, lecture_room) values (3, '10924072','Oyope');
insert into lectures (lecturer_info_id, student_info_id, lecture_room) values (4, '10924072','Thoughtstorm');
insert into lectures (lecturer_info_id, student_info_id, lecture_room) values (5, '10924072','Photolist');
insert into lectures (lecturer_info_id, student_info_id, lecture_room) values (6, '10863450','Pixoboo');
insert into lectures (lecturer_info_id, student_info_id, lecture_room) values (7, '10863450','Fadeo');
insert into lectures (lecturer_info_id, student_info_id, lecture_room) values (8, '10863450','Rhyzio');
insert into lectures (lecturer_info_id, student_info_id, lecture_room) values (9, '10863450','Demimbu');
insert into lectures (lecturer_info_id, student_info_id, lecture_room) values (10, '10863450','Myworks');
