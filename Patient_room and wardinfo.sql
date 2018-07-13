create table Room(
		Block varchar(1),
		RoomNo smallint ,
        RoomType varchar(12) Not null,
        Price Double Not null,
        Date date Not null,
        Status varchar(10) Not null,
        primary key(Block,RoomNo)
);

INSERT INTO Room VALUES('B',202,'Suite',2000,'2015-02-12','vacant');
INSERT INTO Room VALUES('A',401,'Executive',1000,'2011-04-07','filled');
INSERT INTO Room VALUES('A',101,'Deluxe',700,'1999-11-26','vacant');
INSERT INTO Room VALUES('B',204,'Suite',2000,'2013-05-27','filled');
INSERT INTO Room VALUES('B',105,'Executive',1000,'1996-10-23','vacant');
INSERT INTO Room VALUES('A',106,'Deluxe',700,'2017-01-22','filled');
INSERT INTO Room VALUES('A',204,'Executive',1000,'2017-02-15','vacant');
INSERT INTO Room VALUES('B',606,'Deluxe',700,'2000-02-26','filled');
INSERT INTO Room VALUES('B',109,'Deluxe',700,'2014-06-30','vacant');

create table New_Ward(
		Floor varchar(6) Not null,
		Block varchar(1),
		RoomNo smallint,
        RoomType varchar(12) Not null,
        Price Double Not null,
        primary key(Block,RoomNo)
);

INSERT INTO New_Ward VALUES(2,'B',202,'Suite',2000);
INSERT INTO New_Ward VALUES(1,'A',401,'Executive',1000);
INSERT INTO New_Ward VALUES(3,'A',101,'Deluxe',700);
INSERT INTO New_Ward VALUES(1,'B',204,'Suite',2000);
INSERT INTO New_Ward VALUES(2,'B',105,'Executive',1000);
INSERT INTO New_Ward VALUES(3,'A',106,'Deluxe',700);
INSERT INTO New_Ward VALUES(1,'A',204,'Executive',1000);
INSERT INTO New_Ward VALUES(2,'B',606,'Deluxe',700);
INSERT INTO New_Ward VALUES(3,'B',109,'Deluxe',700);

create table Room_Facility(
		RoomType varchar(12),
        Television boolean,
        AC boolean,
        Telephone boolean,
        Refrigerator boolean,
        NumberOfBed smallint Not null,
        Wardrobe boolean,
        ComputerWithInternetConnection boolean,
		Microwaveoven boolean,
		DiningTable boolean,
        primary key(RoomType)
);

INSERT INTO Room_Facility VALUES('Suite',true,true,true,true,2,true,true,true,true);
INSERT INTO Room_Facility VALUES('Executive',true,true,true,false,3,true,false,true,true);
INSERT INTO Room_Facility VALUES('Deluxe',true,true,true,true,4,true,false,false,false);