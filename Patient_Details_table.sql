create table Patient(
		PID bigint,
		Name varchar(50) Not null,
		Gender varchar(6) Not null,
        Birthdate date Not null,
		Phone_no varchar(13) Not null,
		Emergency_phone_no varchar(13) Not null,
		Blood_group varchar(3),
        primary key(PID)
);

INSERT INTO Patient VALUES(1,'Nishi Patel','Female','1998-04-12',9876554123,9632587412,'O+');
INSERT INTO Patient VALUES(2,'Janvi Patel','Female','1997-02-26',9658741235,9561234875,'A-');
INSERT INTO Patient VALUES(3,'Grishma Shah','Female','1975-12-15',9685236598,9764312585,'B+');
INSERT INTO Patient VALUES(4,'Nikhil Jain','Male','1993-07-28',9562318475,9568375416,'AB+');
INSERT INTO Patient VALUES(5,'Akash Mistry','Male','1992-04-07',9865732194,9683529567,'B-');
INSERT INTO Patient VALUES(6,'Rutvi Barot','Female','1987-05-12',9567398564,8683526498,'O+');
INSERT INTO Patient VALUES(7,'Pankaj Singh','Male','1979-04-12',8864952375,8495623274,'A-');
INSERT INTO Patient VALUES(8,'jaya patel','Male','1968-03-12',8795623423,8695324576,'A+');
INSERT INTO Patient VALUES(9,'Charmi chokshi','Female','1992-04-02',8596325689,8462593154,'B+');
INSERT INTO Patient VALUES(10,'Shan sukla','Male','1960-12-12',8596263514,8562345195,'B-');
INSERT INTO Patient VALUES(11,'Janki jain','Female','1992-12-11',8451629395,8460523916,'B+');
INSERT INTO Patient VALUES(12,'Ranvijay Singh','Male','1987-11-23',8362594512,8265349875,null);
INSERT INTO Patient VALUES(13,'Rita Joshi','Female','1985-02-25',8659753245,8695324587,'B+');
INSERT INTO Patient VALUES(14,'Pankaj patel','Male','1982-06-17',9865745236,9562348555,null);
INSERT INTO Patient VALUES(15,'Raghav shah','Male','1979-04-08',8885556662,9586352645,null);

create table Patient_address(
	PID bigint,
	Street varchar(70),
    city varchar(10),
    state varchar(10),
    pincode bigint,
    primary key(PID)
);

INSERT INTO Patient_address VALUES (1,'17-pushpkunj bunglows,science city','Ahmedabad','Gujarat',380060);
INSERT INTO Patient_address VALUES (2,'A-102 indraprasth-8,thaltej ','Ahmedabad','Gujarat',380054);
INSERT INTO Patient_address VALUES (3,'17/3 darshan society,Paldi','Ahmedabad','Gujarat',380060);
INSERT INTO Patient_address VALUES (4,'202 Diamond apartment ,shaduvasvani road ','Rajkot','Gujarat',360005);
INSERT INTO Patient_address VALUES (5,'shriharipark,naranpura','Ahmedabad','Gujarat',380060);
INSERT INTO Patient_address VALUES (6,'17 shivdarshan society,science city','Ahmedabad','Gujarat',380050);
INSERT INTO Patient_address VALUES (7,'21-chankya Tower,Vastrapur','Ahmedabad','Gujarat',380010);
INSERT INTO Patient_address VALUES (8,'27,Shyamrang society,ghatlodia','Ahmedabad','Gujarat',380050);
INSERT INTO Patient_address VALUES (9,'Shubhlakhsmi complex,Ram nagar road','Surat','Gujarat',370021);
INSERT INTO Patient_address VALUES (10,'Narayanfarm,kashibag','Surat','Gujarat',370015);
INSERT INTO Patient_address VALUES (11,'A-801 Surrise park society,Gurukul','Ahmedabad','Gujarat',380042);
INSERT INTO Patient_address VALUES (12,' 1/C Shantiniketan society,kalavad road ','Rajkot','Gujarat',360013);
INSERT INTO Patient_address VALUES (13,'E-001 Shantinagar society,alap evenue','Rajkot','Gujarat',360005);
INSERT INTO Patient_address VALUES (14,'16 Golden homes,Science city','Ahmedabad','Gujarat',380060);
INSERT INTO Patient_address VALUES (15,'Alap green city ,raiya road','Rajkot','Gujarat',360005);

create table Patient_Health_Information(
		PID bigint,
		Date date,
		Disease varchar(40) Not null,
		StatusOfDisease varchar(10),
		Weight_kg  float Not null,
		hemoglobin smallint,
        Height_Inch varchar(7),
        BloodPressure_MMHg smallint,
		primary key(PID,Date)
);

INSERT INTO Patient_Health_Information VALUES(1,'2010-04-12','Paredontal absis','Normal',50,12.5,'5ft 3in',120);
INSERT INTO Patient_Health_Information VALUES(2,'2000-02-26','Angina pectoris','Serious',56,12,'6ft 0in',140);
INSERT INTO Patient_Health_Information VALUES(3,'1998-12-15','Fever','Normal',65,12,'6ft 0in',110);
INSERT INTO Patient_Health_Information VALUES(4,'2012-07-28','Dentinogenous imperfecta','Serious',67,11.5,'4ft 2in',130);
INSERT INTO Patient_Health_Information VALUES(2,'2015-11-01','Angina pectoris','Serious',72,13,'6ft 0in',78);
INSERT INTO Patient_Health_Information VALUES(5,'2017-02-15','Fever','Normal',45,11.5,'5ft 5in',90);
INSERT INTO Patient_Health_Information VALUES(5,'2011-04-07','Oral submucous fibrosis','Serious',67,11.5,'5ft 5in',110);
INSERT INTO Patient_Health_Information VALUES(6,'1999-05-12','Cough,Fever','Normal',76,10,'5ft 7in',78);
INSERT INTO Patient_Health_Information VALUES(7,'2010-04-12','Dizziness','Serious',68,13,'5ft 4in',65);
INSERT INTO Patient_Health_Information VALUES(8,'1998-03-12','Check up for baby (Pregenant)','Serious',56,12,'5ft 8in',104);
INSERT INTO Patient_Health_Information VALUES(9,'2001-04-02','Hypertension','Serious',59,11,'6ft 0in',150);
INSERT INTO Patient_Health_Information VALUES(10,'2011-12-12','Pregenant','Serious',54,13.5,'5ft 3in',95);
INSERT INTO Patient_Health_Information VALUES(11,'2010-12-11','headache','Normal',60,14,'5ft 4in',109);
INSERT INTO Patient_Health_Information VALUES(12,'2014-11-23','headache','Normal',46,12,'5ft 7in',120);
INSERT INTO Patient_Health_Information VALUES(13,'2011-02-25','Pregenant','Normal',49,11,'5ft 8in',100);
INSERT INTO Patient_Health_Information VALUES(14,'2009-06-17','Heart attack','Serious',55,9,'6ft 0in',98);
INSERT INTO Patient_Health_Information VALUES(15,'2001-04-08','Fever','Normal',78,14.5,'6ft 1in',85);

create table Medical_Information(
		PID bigint,
		Date date,
		MedicineName varchar(30) Not null,
		MedicineType varchar(20),
		Price double Not null,
		Dosage varchar(20) Not null, 
		Timeperiod varchar(20) Not null,
		primary key(PID,Date)
);

INSERT INTO Medical_Information VALUES(1,'2010-04-12','Licamox CV','Teeth related',4040,'10 tables','twice in a day');
INSERT INTO Medical_Information VALUES(2,'2000-02-26','Sarbex XT','Leg pain related',6000,'350 tables','3 time in day');
INSERT INTO Medical_Information VALUES(3,'1998-12-15','Calpol','fever',3000,'12 tablets','twice day');
INSERT INTO Medical_Information VALUES(4,'2012-07-28','Ecosprin','Teeth related',5050,'10 tables','twice in a day');
INSERT INTO Medical_Information VALUES(2,'2015-11-01','Repan-D','Leg pain related',9020,'350 tables','3 time in day');
INSERT INTO Medical_Information VALUES(5,'2017-02-15','Calpol','fever',870,'12 tablets','twice day');
INSERT INTO Medical_Information VALUES(5,'2011-04-07','Cefiya','Teeth related',700,'10 tables','twice in a day');
INSERT INTO Medical_Information VALUES(6,'1999-05-12','Calpol,saptilin','fever,cough',1560,'10,30 tablets','twice day');
INSERT INTO Medical_Information VALUES(7,'2010-04-12','Azithron','Dizziness',1300,'150 tablets','once after lunch');
INSERT INTO Medical_Information VALUES(8,'1998-03-12','benazepril','Pregenant(Blood)',400,'10 tablets','Once in day');
INSERT INTO Medical_Information VALUES(9,'2001-04-02','furosemide','Hypertension',600,'30 tablets','Daily one');
INSERT INTO Medical_Information VALUES(10,'2011-12-12','Penicillin','Pregenant(Fever)',750,'10 tablets','Once in day');
INSERT INTO Medical_Information VALUES(11,'2010-12-11','Vidaflam Sp','headache related',500,'15 tablets','3times in day');
INSERT INTO Medical_Information VALUES(12,'2014-11-23','Vidaflam Sp','headache related',2401,'80 tablets','3times in day');
INSERT INTO Medical_Information VALUES(13,'2011-02-25','Acetaminophen','Pregenant(normal)',1200,'10 tablets','Once in day');
INSERT INTO Medical_Information VALUES(14,'2009-06-17','Aspirin','Small heart attack',1760,'150 tablets','3 times in day');
INSERT INTO Medical_Information VALUES(15,'2001-04-08','Dolo','fever related',1550,'10 tablets','twice day');