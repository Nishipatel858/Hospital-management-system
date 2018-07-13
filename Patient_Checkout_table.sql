create table PatientCheckout(
        PID bigint,
        DateIn Date,
        CheckOutDate Date Not null,
        Block  varchar(1) Not null,
        RoomNo smallint Not null,
        StatusOfPatient varchar(50),
        primary key(PID,DateIn)
);

INSERT INTO PatientCheckout VALUES (2,'2000-02-26','2001-01-16','A',401,'not fully cured');
INSERT INTO PatientCheckout VALUES (3,'1998-12-15','2000-09-13','A',101,'under treatment');
INSERT INTO PatientCheckout VALUES (4,'2012-07-28','2012-08-08','B',104,'Cured');
INSERT INTO PatientCheckout VALUES (2,'2015-11-01','2015-11-01','A',206,'not fully cured');
INSERT INTO PatientCheckout VALUES (12,'2014-11-23','2014-11-23','A',104,'No more');
INSERT INTO PatientCheckout VALUES (13,'2011-02-25','2011-03-11','B',203,'Cured');
INSERT INTO PatientCheckout VALUES (6,'1999-05-12','2001-10-02','B',606,'under treatment');
INSERT INTO PatientCheckout VALUES (7,'2010-04-12','2011-11-14','B',202,'Cured');
INSERT INTO PatientCheckout VALUES (14,'2009-06-17','2009-08-17','A',102,'Cured');
INSERT INTO PatientCheckout VALUES (15,'2001-04-08','2001-04-08','A',402,'Cured');

create table Patient_TotalBill(
		PID bigint,
        DateIN date,
        CheckOutDate date Not null,
        PymentType varchar(15) Not null,
        MedicinePrice float,
        RoomPrice double,
        DoctorFees double,
        ServicePrice float,
        Bill_No bigint,
        TotalBill double Not null ,
        primary key(PID,DateIn)
);

INSERT INTO Patient_TotalBill VALUES (1,'2010-04-12','2010-04-18','cash',4040,0,30000,0,1,35240);
INSERT INTO Patient_TotalBill VALUES (2,'2000-02-26','2001-01-16','cash',6000,2000,4050,150,2,12200);
INSERT INTO Patient_TotalBill VALUES (3,'1998-12-15','2000-09-13','through policy',3000,700,15000,400,3,19100);
INSERT INTO Patient_TotalBill VALUES (4,'2012-07-28','2012-09-12','cash',5050,1000,39000,800,4,45850);
INSERT INTO Patient_TotalBill VALUES (2,'2015-11-01','2015-12-01','check',9020,2000,2500,160,5,13680);
INSERT INTO Patient_TotalBill VALUES (5,'2011-04-07','2011-08-01','cash',870,0,7800,0,6,8670);
INSERT INTO Patient_TotalBill VALUES (5,'2017-02-15','2017-02-17','cash',700,0,700,0,7,1400);
INSERT INTO Patient_TotalBill VALUES (6,'1999-05-12','2001-10-02','through policy',1560,1000,13000,350,8,15910);
INSERT INTO Patient_TotalBill VALUES (7,'2010-04-12','2011-11-14','check',1300,1000,50200,455,9,52955);
INSERT INTO Patient_TotalBill VALUES (8,'1998-03-12','1998-03-12','cash',400,0,500,0,10,900);
INSERT INTO Patient_TotalBill VALUES (9,'2001-04-02','2001-04-02','cash',600,0,1000,0,11,1600);
INSERT INTO Patient_TotalBill VALUES (10,'2011-12-12','2011-12-12','cash',750,0,1200,0,12,1950);
INSERT INTO Patient_TotalBill VALUES (11,'2010-12-11','2010-12-11','cash',500,0,500,0,13,1000);
INSERT INTO Patient_TotalBill VALUES (12,'2014-11-23','2014-11-23','through policy',2401,2000,90000,500,14,94901);
INSERT INTO Patient_TotalBill VALUES (13,'2011-02-25','2011-03-11','Check',1200,1000,70500,300,15,73000);
INSERT INTO Patient_TotalBill VALUES (14,'2009-06-17','2009-08-17','through policy',1760,1000,53300,700,16,56760);
INSERT INTO Patient_TotalBill VALUES (15,'2001-04-08','2001-04-08','Cash',1550,1000,24000,300,17,26850);

create table Payment_Cheque(
		PID bigint,
        Date date,
		ChequeType varchar(15) Not null unique Key,
        ChequeNo varchar(50) Not null,
        Recipient varchar(100) Not null,
        AmountInNo double Not null,
        AmountInWords varchar(200) Not null,
        DateOfPaying date Not null,
        primary key(PID,Date)
);
INSERT INTO Payment_Cheque VALUES (7,'2010-04-12','ACPay','PKTIUW264W9S27','ABC hospital',13680,'thirteen thousand six hundred eighty','2015-12-01');
INSERT INTO Payment_Cheque VALUES (13,'2011-02-25','bearer cheque','OIHIUW26UU9S27','ABC hospital',73000,' seventy-three thousand','2011-03-11');

create table Patient_Policy(
		PID bigint,
        CheckOutDate date,
        Policy_Name varchar(200) Not null,
        Policy_Number varchar(15) Not null,
        Policy_Type varchar(30),
        Policy_Duration varchar(10),
        primary key(PID,CheckOutDate)
);

INSERT INTO Patient_Policy VALUES (3,'2000-09-13','The orientals company limited','DZ32987601','Caseless family policy','15 Years');
INSERT INTO Patient_Policy VALUES (6,'2001-10-02',' United company insurance ','AB097RT431','Handcase ploicy','10 Year');
INSERT INTO Patient_Policy VALUES (12,'2014-11-23','National company insurance ','UI0987OK12P','Caseless family policy','6 Year');
INSERT INTO Patient_Policy VALUES (14,'2009-08-17','Star India insurance limited','WE76120971M','Caseless family policy','5 year');


create table Blood_donation(
		PID bigint,
		BloodDonor varchar(30) Not null,
        Sex varchar(6),
        PhoneNumber varchar(13) Not null,
        Age smallint Not null,
        Weight float Not null,
        CurrentDonationDate date Not null,
        BloodGroup varchar(3) Not null,
        Hemoglobin smallint,
        BloodDeliveryDate date,
        LastDonationDate date,
        MedicalStatus varchar(50)
);	

INSERT INTO Blood_donation VALUES (1,'Shashvat sanghvi','Male',9510263456,20,56,'2010-02-09','O+',14,'2010-12-05','2009-10-26',null);
INSERT INTO Blood_donation VALUES (2,'Kapila sharma','Female',9632574125,27,50,'2008-10-01','A-',12.5,'2008-10-01','2006-10-22',null);
INSERT INTO Blood_donation VALUES (3,'Susila patel','Female',9513264872,29,55,'2010-10-08','B+',11,'2010-12-03','2007-11-24',null);
INSERT INTO Blood_donation VALUES (null,'hemangi sharma','Female',9965432188,27,52,'2009-12-01','O-',12.5,null,'2009-11-12',null);
INSERT INTO Blood_donation VALUES (8,'Manthan Patel','Male',9786543265,24,76,'2010-12-23','A+',14,'2010-12-29','2008-09-22',null);
INSERT INTO Blood_donation VALUES (null,'Yogi jain','Male',9563286515,19,72,'2015-09-23','AB-',13,null,'2003-12-16',null);
INSERT INTO Blood_donation VALUES (9,'yash shah','Male',8829563495,20,65,'2001-10-01','B+',14,'2002-12-23','1998-10-12',null);
INSERT INTO Blood_donation VALUES (7,'Zeel sharma','Male',8795362546,21,70,'2008-12-23','A-',12.5,'2008-12-24',null,null);
INSERT INTO Blood_donation VALUES (5,'Sapn Patel','Male',8460953278,24,69,'2009-05-07','B-',12,'2009-06-20','2004-10-10',null);
INSERT INTO Blood_donation VALUES (8,'Rita sharma','Female',9623518472,20,50,'2004-12-04','A+',12.5,'2004-12-24',null,null);
INSERT INTO Blood_donation VALUES (1,'Krishna Patel','Female',9935624815,21,54,'2010-08-08','O+',11,'2011-09-23','2001-09-12',null);
INSERT INTO Blood_donation VALUES (null,'himani sharma','Female',8141265395,23,56,'2011-12-12','O-',8,null,null,null);
INSERT INTO Blood_donation VALUES (2,'krupa patel','Female',8265396584,22,52,'2008-10-01','A-',12,'2008-10-01','2007-12-21',null);
INSERT INTO Blood_donation VALUES (null,'Vishwa shah','Female',8346591672,19,57,'2012-10-25','AB-',10,null,null,null);
INSERT INTO Blood_donation VALUES (8,'krishma sharma','Female',9685741295,20,68,'2012-12-01','A+',9.5,'2012-12-01','2010-10-22',null);
