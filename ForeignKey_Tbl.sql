Alter table Login add FOREIGN KEY (UserID) references user_information(UserID);
Alter table registration add FOREIGN KEY (PNo,Date) references appointment(PNo,Date);
Alter table appointment add FOREIGN KEY (SID) references staff_information(SID);
Alter table user_information add FOREIGN KEY (UserID) references staff_information(SID);
Alter table patient add FOREIGN KEY (PID) references registration(PNo);
Alter table patient_health_information add FOREIGN KEY (PID,Date) references registration(PNo,Date);
Alter table patientcheckout add FOREIGN KEY (PID,DateIn) references registration(PNo,Date);
Alter table patientcheckout add FOREIGN KEY (Block,RoomNo) references room(Block,RoomNo);
Alter table medical_information add FOREIGN KEY (PID,Date) references registration(PNo,Date);
Alter table patient_totalbill add FOREIGN KEY (PID,DateIn) references registration(PNo,Date);
Alter table patient_policy add FOREIGN KEY (PID) references registration(PNo);
Alter table staff_address add FOREIGN KEY (SID) references staff_information(SID);
Alter table patient_address add FOREIGN KEY (PID) references patient(PID);
Alter table Room add FOREIGN KEY (RoomType) references Room_Facility(RoomType);
Alter table New_Ward add FOREIGN KEY (RoomType) references Room_Facility(RoomType);
Alter table Blood_donation add FOREIGN KEY (PID) references Patient(PID);
Alter table patient_totalbill add FOREIGN KEY (PID) references Payment_Check(PID);


