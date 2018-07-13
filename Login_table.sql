CREATE SCHEMA hospital_management_system_project;
CREATE SCHEMA hospital_management_system;
USE hospital_management_system_project;
USE hospital_management_system;

create table login(
    UserID	varchar(9),
    Password varchar(10) Not null,
    primary key(UserID)
);

INSERT INTO login VALUES ('1998Dr001','Apple');
INSERT INTO login VALUES ('2000Nu013','ingi013');
INSERT INTO login VALUES ('2000Mr100','abc');
INSERT INTO login VALUES ('2001Ca067','Money$');
INSERT INTO login VALUES ('2014Ph056','Me007');
INSERT INTO login VALUES ('2014Re007','Work');
INSERT INTO login VALUES ('2001Dr082','123456');
INSERT INTO login VALUES ('2015Dr038','DrNene');
INSERT INTO login VALUES ('2016Nu019','111');
INSERT INTO login VALUES ('2014Re056','neha123');
INSERT INTO login VALUES ('2009Dr022','DrPatel');
INSERT INTO login VALUES ('2010Dr001','96017$$');
INSERT INTO login VALUES ('2012Dr087','!VarMa@');

create table User_information(
	UserID varchar(9),
    Name varchar(50)Not null,
    Position varchar(40) Not null,
    primary key(UserID)
);

INSERT INTO User_information VALUES ('2001Ca067','Mukesh Roy','Cashier');
INSERT INTO User_information VALUES ('2014Ph056','Dinesh Jain','Pharmacist');
INSERT INTO User_information VALUES ('2014Re007','Mayank Shukla','Receptionist');
INSERT INTO User_information VALUES ('2001Dr082','RohitKumar Shah','Doctor(Cardiologist)');
INSERT INTO User_information VALUES ('2015Dr038','Shriram Madhav Nene','Doctor(MBBS)');
INSERT INTO User_information VALUES ('1998Dr001','Keyusha Patel','Doctor(Dentist)');
INSERT INTO User_information VALUES ('2000Nu013','Shah Saloni Krunalbhai','Nurse');
INSERT INTO User_information VALUES ('2000Mr100','Piyush Patel','Manager');
INSERT INTO User_information VALUES ('2016Nu019','Parmar Rita Mukeshbhai','Nurse');
INSERT INTO User_information VALUES ('2014Re056','Jesika Sharma','Receptionist');
INSERT INTO User_information VALUES ('2009Dr022','Kashyap Patel','Doctor(Gynaecologist)');
INSERT INTO User_information VALUES ('2010Dr001','Neel Sharma','Doctor(Neurological surgeon)');
INSERT INTO User_information VALUES ('2012Dr087','Pankti varma','Doctor(Pain management specialist)');


create table staff_information(
	SID varchar(9),
    Name varchar(50) Not null,
    Sex varchar(6) Not null,
    Phone_no varchar(13) Not null,
    Email_id varchar(30) ,
    Birthdate Date Not null,
    Qualification varchar(70) Not null,
    Position varchar(40) Not null,
    DateOfJoining date Not null,
    WorkHours smallint Not null,
    Type varchar (20),
    Salary double Not null,
	Emergency_phone_no varchar(13) Not null,
    primary key(SID)
);

INSERT INTO staff_information VALUES ('2001Ca067','Mukesh Roy','Male',9825321151,'mukeshroy067@gmail.com','1975-02-14','High school diploma and three years experience of job at SIMS hospital','Cashier','2001-12-13',12,null,20000,9959868743);
INSERT INTO staff_information VALUES ('2014Ph056','Dinesh Jain','Male',8238057413,'DJ11@yahoo.in','1992-08-13','M.Pharm','Pharmacist','2014-06-23',12,null,25500,9876543215);
INSERT INTO staff_information VALUES ('2014Re007','Mayank Shukla','Male',9601739976,'Mayank@gmail.com','1990-12-11','High school diploma and on the job training','Receptionist','2014-07-15',14,null,14500,814165291);
INSERT INTO staff_information VALUES ('2001Dr082','RohitKumar Shah','Male',8460391597,'RShukla$$00@gmail.com','1965-07-14','Masters of Cardiologist(MD)','Doctor(Cardiologist)','2001-10-05',9,'trainee',119442,9658349552);
INSERT INTO staff_information VALUES ('2015Dr038','Shriram Madhav Nene','Male',9925987092,'Nene.Dr@outlook.com','1991-10-17','Masters of child specialist(MD) doing from civil college','Doctor(MBBS)','2015-11-13',14,'permanent',100999,854278963);
INSERT INTO staff_information VALUES ('1998Dr001','Keyusha Patel','Female',8141269822,'Keyushapatel4@yahoo.com','1958-06-12','Masters of Dental Science','Doctor(Dentist)','1998-08-04',12,'permanent',25999,8562479134);
INSERT INTO staff_information VALUES ('2000Nu013','Shah Saloni Krunalbhai','Female',7600946936,'Saloni76Shah@office.club','1975-05-06','Nursing (ADN) and 4 year job experience at SAL hospital','Nurse','2000-05-21',7,null,19700,9467125834);
INSERT INTO staff_information VALUES ('2000Mr100','Piyush Patel','Male',9925481099,'pp%4199@gmail.com','1979-02-23','Bachelor of Science in Health Administration','Manager','2000-09-22',6,null,53000,8457961234);
INSERT INTO staff_information VALUES ('2016Nu019','Parmar Rita Mukeshbhai','FeMale',9978407136,'RitaM!!@gmail.com','1991-01-01','Nursing (ADN)','Nurse','2016-03-15',7,null,19700,9476812349);
INSERT INTO staff_information VALUES ('2014Re056','Jesika Sharma','Female',9558848811,'Jesika$#12@gmail.com','1988-06-16','High school diploma','Receptionist','2014-01-14',14,null,14500,9945712361);
INSERT INTO staff_information VALUES ('2000Sw001','Kamlesh Thakker','Male',9601737623,null,'1985-05-26','7th pass','Sweeper','2000-08-17',10,null,6500,8697412305);
INSERT INTO staff_information VALUES ('2008Wa008','Raju Shah','Male',8165488996,null,'1993-12-23','S.S.C','Watchman','2008-09-16',12,null,11500,9687412388);
INSERT INTO staff_information VALUES ('2010Sw045','Jyoti Desai','Female',9978496354,null,'1996-09-08','9th pass','Sweeper','2010-02-11',10,null,6500,9968741230);
INSERT INTO staff_information VALUES ('2007Wa082','Shyam Dalal','Male',9428919219,null,'1994-11-16','S.S.C','Watchman','2007-07-27',12,null,12500,7645891230);
INSERT INTO staff_information VALUES ('2009Dr022','Kashyap Patel','Male',9865741236,'Kashyap@yahoo.in','1979-10-07','M.D. in Gynaecology','Doctor(Gynaecologist)','2009-03-23',12,'permanent',120000,8866554793);
INSERT INTO staff_information VALUES ('2010Dr001','Neel Sharma','Male',9865347215,'Neel098@outlook.com','1978-12-13','M.D. in Neurology','Doctor(Neurological surgeon)','2010-10-10',8,'visiting',140000,9823764512);
INSERT INTO staff_information VALUES ('2012Dr087','Pankti varma','Female',9685741236,'DrPankti@yahoo.co.in','1987-11-14','M.D. in Pain management','Doctor(Pain management specialist)','2012-01-03',12,'permanent',100000,8859742365);
INSERT INTO staff_information VALUES ('2015Dr001','madhuri Nene','FeMale',9857625315 ,'Nene.DrMadhuri@outlook.com','1991-12-27','Masters of child specialist(MD) doing from civil college','Doctor(MBBS)','2015-11-12',14,'permanent',100999,854278963);

create table staff_address(
	SID varchar(9),
	Street varchar(70) Not null,
    city varchar(10) Not null,
    state varchar(10) Not null,
    pincode bigint Not null,
    primary key(SID)
);

INSERT INTO staff_address VALUES ('2001Ca067','14-pushpkunj bunglows,science city','Ahmedabad','Gujarat',380060);
INSERT INTO staff_address VALUES ('2014Ph056','Alap green city ,raiya road','Rajkot','Gujarat',360005);
INSERT INTO staff_address VALUES ('2014Re007','Shubhlakhsmi complex,Ram nagar road','Surat','Gujarat',370021);
INSERT INTO staff_address VALUES ('2001Dr082','E-402 indraprasth-8,thaltej ','Ahmedabad','Gujarat',380054);
INSERT INTO staff_address VALUES ('2015Dr038','11/3 darshan society,Paldi','Ahmedabad','Gujarat',380060);
INSERT INTO staff_address VALUES ('1998Dr001','21-chankya Tower,Vastrapur','Ahmedabad','Gujarat',380010);
INSERT INTO staff_address VALUES ('2000Nu013','402 Diamond apartment ,shaduvasvani road ','Rajkot','Gujarat',360005);
INSERT INTO staff_address VALUES ('2000Mr100','16,Shyamrang society,ghatlodia','Ahmedabad','Gujarat',380050);
INSERT INTO staff_address VALUES ('2016Nu019',' 1/A Shantiniketan society,kalavad road ','Rajkot','Gujarat',360013);
INSERT INTO staff_address VALUES ('2014Re056','Narayanfarm,kashibag','Surat','Gujarat',370015);
INSERT INTO staff_address VALUES ('2000Sw001','A-101 Surrise park society,Gurukul','Ahmedabad','Gujarat',380042);
INSERT INTO staff_address VALUES ('2008Wa008','B-001 Shantinagar society,alap evenue','Rajkot','Gujarat',360005);
INSERT INTO staff_address VALUES ('2010Sw045','shriharipark,naranpura','Ahmedabad','Gujarat',380060);
INSERT INTO staff_address VALUES ('2007Wa082','3 shivdarshan society,science city','Ahmedabad','Gujarat',380050);
INSERT INTO staff_address VALUES ('2009Dr022','01 Golden homes,Science city','Ahmedabad','Gujarat',380060);
INSERT INTO staff_address VALUES ('2010Dr001','A-202 Hildarshan apartment,Vastrapur','Ahmedabad','Gujarat',380015);
INSERT INTO staff_address VALUES ('2012Dr087','007 Kuldeep nagar,Rilif road','Ahmedabad','Gujarat',380010);
