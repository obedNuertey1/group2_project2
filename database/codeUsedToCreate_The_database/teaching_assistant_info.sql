create table teaching_assistant_info (
	ta_id BIGSERIAL NOT NULL PRIMARY KEY,
	lecturer_info_id INT NOT NULL,
	first_name VARCHAR(50) NOT NULL,
	last_name VARCHAR(50) NOT NULL,
	date_of_birth DATE NOT NULL,
	residential_Address VARCHAR(50) NOT NULL,
	nationality VARCHAR(50) NOT NULL,
	email VARCHAR(50) UNIQUE,
	FOREIGN KEY(lecturer_info_id) REFERENCES lecturer_info(lecturer_id) ON DELETE CASCADE
);
insert into teaching_assistant_info (lecturer_info_id, first_name, last_name, date_of_birth, residential_Address, nationality, email) values (1, 'Karleen', 'Turrell', '6/17/2008', '675 Jackson Court', 'Cameroon', 'kturrell0@ted.com');
insert into teaching_assistant_info (lecturer_info_id, first_name, last_name, date_of_birth, residential_Address, nationality, email) values (2, 'Randy', 'Schanke', '8/21/2014', '0 Cherokee Crossing', 'Ghana', 'rschanke1@ted.com');
insert into teaching_assistant_info (lecturer_info_id, first_name, last_name, date_of_birth, residential_Address, nationality, email) values (3, 'Miran', 'Bolstridge', '4/19/2016', '69 Del Sol Plaza', 'Ivory Coast', 'mbolstridge2@fc2.com');
insert into teaching_assistant_info (lecturer_info_id, first_name, last_name, date_of_birth, residential_Address, nationality, email) values (4, 'Melly', 'Ride', '1/13/2010', '176 Buena Vista Junction', 'Liberia', 'mride3@ebay.com');
insert into teaching_assistant_info (lecturer_info_id, first_name, last_name, date_of_birth, residential_Address, nationality, email) values (5, 'Gwen', 'Smedmoor', '5/19/2012', '33 Shopko Lane', 'Cameroon', 'gsmedmoor4@deviantart.com');
insert into teaching_assistant_info (lecturer_info_id, first_name, last_name, date_of_birth, residential_Address, nationality, email) values (6,'Kerstin', 'Blanket', '9/3/2004', '8470 Laurel Alley', 'Nigeria', 'kblanket5@ask.com');
insert into teaching_assistant_info (lecturer_info_id, first_name, last_name, date_of_birth, residential_Address, nationality, email) values (7, 'Quinn', 'Stiddard', '7/16/2010', '0 Transport Drive', 'Nigeria', 'qstiddard6@360.cn');
insert into teaching_assistant_info (lecturer_info_id, first_name, last_name, date_of_birth, residential_Address, nationality, email) values (8, 'Vivien', 'Merryfield', '8/26/2005', '054 Meadow Ridge Pass', 'Nigeria', 'vmerryfield7@simplemachines.org');
insert into teaching_assistant_info (lecturer_info_id, first_name, last_name, date_of_birth, residential_Address, nationality, email) values (10, 'Celestine', 'Jacobsohn', '10/23/2011', '0 Harper Parkway', 'Nigeria', 'cjacobsohn8@constantcontact.com');
insert into teaching_assistant_info (lecturer_info_id, first_name, last_name, date_of_birth, residential_Address, nationality, email) values (9, 'Reiko', 'Archdeckne', '9/11/2019', '0772 Commercial Park', 'Nigeria', 'rarchdeckne9@spotify.com');
insert into teaching_assistant_info (lecturer_info_id, first_name, last_name, date_of_birth, residential_Address, nationality, email) values (10, 'Jobyna', 'Kemwal', '5/19/2017', '99977 Hudson Way', 'Ivory Coast', 'jkemwala@1688.com');
insert into teaching_assistant_info (lecturer_info_id, first_name, last_name, date_of_birth, residential_Address, nationality, email) values (11, 'Kara', 'Langham', '10/12/2016', '0697 Nancy Point', 'Nigeria', 'klanghamb@businessweek.com');
insert into teaching_assistant_info (lecturer_info_id, first_name, last_name, date_of_birth, residential_Address, nationality, email) values (12, 'Kristo', 'Robens', '1/16/2010', '5047 5th Parkway', 'Nigeria', 'krobensc@newyorker.com');
insert into teaching_assistant_info (lecturer_info_id, first_name, last_name, date_of_birth, residential_Address, nationality, email) values (13, 'Jase', 'Lockley', '8/20/2002', '25961 Marcy Way', 'Nigeria', 'jlockleyd@123-reg.co.uk');
insert into teaching_assistant_info (lecturer_info_id, first_name, last_name, date_of_birth, residential_Address, nationality, email) values (14, 'Michelle', 'Duchart', '12/9/2006', '01202 Valley Edge Road', 'Nigeria', 'mducharte@bizjournals.com');
insert into teaching_assistant_info (lecturer_info_id, first_name, last_name, date_of_birth, residential_Address, nationality, email) values (15, 'Eldin', 'Bickley', '1/28/2006', '95 Debs Point', 'Nigeria', 'ebickleyf@topsy.com');
insert into teaching_assistant_info (lecturer_info_id, first_name, last_name, date_of_birth, residential_Address, nationality, email) values (16, 'Rowan', 'Thurner', '10/23/2015', '475 Crowley Park', 'Nigeria', 'rthurnerg@about.me');
insert into teaching_assistant_info (lecturer_info_id, first_name, last_name, date_of_birth, residential_Address, nationality, email) values (17, 'Kania', 'Arsey', '8/19/2019', '658 Summit Hill', 'Nigeria', 'karseyh@cnbc.com');
insert into teaching_assistant_info (lecturer_info_id, first_name, last_name, date_of_birth, residential_Address, nationality, email) values (18, 'Sarita', 'Alpes', '11/12/2005', '4325 Holy Cross Point', 'Nigeria', 'salpesi@sina.com.cn');
insert into teaching_assistant_info (lecturer_info_id, first_name, last_name, date_of_birth, residential_Address, nationality, email) values (19, 'Nilson', 'Faragher', '2/28/2017', '61437 Roxbury Pass', 'Nigeria', 'nfaragherj@home.pl');
