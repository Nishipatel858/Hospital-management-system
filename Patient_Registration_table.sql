create table Registration(
		PNo bigint,
        Name varchar(50) Not null,
        Date Date,
        primary key(PNo,Date)
);

INSERT INTO Registration VALUES(1,'Nishi Patel','2010-04-12');
INSERT INTO Registration VALUES(2,'Janvi Patel','2000-02-26');
INSERT INTO Registration VALUES(3,'Grishma Shah','1998-12-15');
INSERT INTO Registration VALUES(4,'Nikhil Jain','2012-07-28');
INSERT INTO Registration VALUES(2,'Janvi Patel','2015-11-01');
INSERT INTO Registration VALUES(5,'Akash Mistry','2017-02-15');
INSERT INTO Registration VALUES(5,'Akash Mistry','2011-04-07');
INSERT INTO Registration VALUES(6,'Rutvi Barot','1999-05-12');
INSERT INTO Registration VALUES(7,'Pankaj Singh','2010-04-12');
INSERT INTO Registration VALUES(8,'jaya patel','1998-03-12');
INSERT INTO Registration VALUES(9,'Charmi chokshi','2001-04-02');
INSERT INTO Registration VALUES(10,'Shan sukla','2011-12-12');
INSERT INTO Registration VALUES(11,'Janki jain','2010-12-11');
INSERT INTO Registration VALUES(12,'Ranvijay Singh','2014-11-23');
INSERT INTO Registration VALUES(13,'Rita Joshi','2011-02-25');
INSERT INTO Registration VALUES(14,'Pankaj patel','2009-06-17');
INSERT INTO Registration VALUES(15,'Raghav shah','2001-04-08');

create table Appointment(
		ANo int Not null,
		PNo bigint,
		SID varchar(9) Not null,
		Time varchar(10) Not null,
		Date date,
		Name varchar(50) Not null,
		primary key(PNo,Date)
);

INSERT INTO Appointment VALUES(1,1,'1998Dr001','3:30 PM','2010-04-12','Nishi Patel');
INSERT INTO Appointment VALUES(2,2,'2001Dr082','9:45 AM','2000-02-26','Janvi Patel');
INSERT INTO Appointment VALUES(3,3,'2015Dr038','10:25 AM','1998-12-15','Grishma Shah');
INSERT INTO Appointment VALUES(4,4,'1998Dr001','7:00 PM','2012-07-28','Nikhil Jain');
INSERT INTO Appointment VALUES(5,2,'2001Dr082','4:30 PM','2015-11-01','Janvi Patel');
INSERT INTO Appointment VALUES(6,5,'2015Dr038','6:00 PM','2017-02-15','Akash Mistry');
INSERT INTO Appointment VALUES(7,5,'1998Dr001','12:40 PM','2011-04-07','Akash Mistry');
INSERT INTO Appointment VALUES(8,6,'2015Dr038','5:50 PM','1999-05-12','Rutvi Barot');
INSERT INTO Appointment VALUES(9,7,'2015Dr038','2:15 PM','2010-04-12','Pankaj Singh');
INSERT INTO Appointment VALUES(10,8,'2009Dr022','10:10 AM','1998-03-12','jaya patel');
INSERT INTO Appointment VALUES(8,9,'2010Dr001','4:00 PM','2001-04-02','Charmi chokshi');
INSERT INTO Appointment VALUES(9,10,'2009Dr022','6:50 PM','2011-12-12','Shan sukla');
INSERT INTO Appointment VALUES(11,11,'2012Dr087','9:10 AM','2010-12-11','Janki jain');
INSERT INTO Appointment VALUES(13,12,'2012Dr087','12:30 PM','2014-11-23','Ranvijay Singh');
INSERT INTO Appointment VALUES(14,13,'2009Dr022','5:15 PM','2011-02-25','Rita Joshi');
INSERT INTO Appointment VALUES(12,14,'2012Dr087','3:30 PM','2009-06-17','Pankaj patel');
INSERT INTO Appointment VALUES(15,15,'2015Dr038','12:10 PM','2001-04-08','Raghav shah');


