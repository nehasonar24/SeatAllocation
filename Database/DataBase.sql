

CREATE DATABASE SeatAppDB;
SHOW databases;
CREATE TABLE  Tbl_Employee (
EmpID int auto_increment primary key,
FirstName varchar (50),
LastName varchar (50),
Username varchar (10),
TeamID int,     
ManagerID int,  -- fk 
IsManager boolean,
Password varchar (100),

 FOREIGN KEY (TeamID)REFERENCES  Tbl_Team (TeamID)
);

CREATE TABLE  Tbl_Team (
TeamID int auto_increment primary key,
TeamName varchar (50),
TeamManagerID varchar (50) , -- refrence from tbl_employee

FOREIGN KEY (TeamManagerID)REFERENCES  Tbl_Employee (ManagerID)
);

CREATE TABLE  Tbl_SeatMaster (
SeatID int auto_increment primary key,
Floor varchar (50),
SeatNo varchar (10),
ManagerID int
);

CREATE TABLE  TBl_Booking (
SeatID varchar (50),
EmpID varchar (50),
WeekNo varchar (10)

);

