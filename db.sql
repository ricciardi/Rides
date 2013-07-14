/*DROP DATABASE Rides;
CREATE DATABASE Rides;
USE Rides;
*/

CREATE TABLE IF NOT EXISTS User(
P_Id bigint UNSIGNED NOT NULL AUTO_INCREMENT,
FB_Id bigint UNSIGNED NOT NULL,
Name varchar(32),
PRIMARY KEY (`P_Id`),
CONSTRAINT UNIQUE KEY `FB_Id` (`FB_Id`));


CREATE TABLE IF NOT EXISTS Groups(
Group_Id bigint UNSIGNED NOT NULL AUTO_INCREMENT,
Name varchar(32) NOT NULL,
Created datetime NOT NULL,
PRIMARY KEY (`Group_Id`)); 


CREATE TABLE IF NOT EXISTS Admin(
P_Id bigint UNSIGNED NOT NULL,
Group_Id bigint UNSIGNED NOT NULL,
FOREIGN KEY (P_Id) REFERENCES User(P_Id),
FOREIGN KEY (Group_Id) REFERENCES Groups(Group_Id));

CREATE TABLE IF NOT EXISTS Member(
Group_Association_Id bigint UNSIGNED NOT NULL AUTO_INCREMENT,
P_Id bigint UNSIGNED NOT NULL,
Group_Id bigint UNSIGNED NOT NULL,
Joined datetime NOT NULL,
PRIMARY KEY `Group_Association_Id` (`Group_Association_Id`),
FOREIGN KEY (P_Id) REFERENCES User(P_Id),
FOREIGN KEY (Group_Id) REFERENCES Groups(Group_Id));

CREATE TABLE IF NOT EXISTS Rides(
Rides_Id bigint UNSIGNED NOT NULL AUTO_INCREMENT,
Driver_Id bigint UNSIGNED NOT NULL,
Created_At datetime NOT NULL,
Accepted_At datetime DEFAULT NULL,
Completed_At datetime DEFAULT NULL,
PRIMARY KEY `Rides_Id` (`Rides_Id`),
FOREIGN KEY (Driver_Id) REFERENCES User(P_Id));

CREATE TABLE IF NOT EXISTS Invite_Status(
Invite_Status_Id int(1) NOT NULL AUTO_INCREMENT,
Invite_Status_Name varchar(32) NOT NULL,
PRIMARY KEY `Invite_Status_Id` (`Invite_Status_Id`),
CONSTRAINT UNIQUE KEY `Invite_Status_Name` (`Invite_Status_Name`));

CREATE TABLE IF NOT EXISTS Invites(
Invite_Id bigint UNSIGNED NOT NULL AUTO_INCREMENT,
From_Id bigint UNSIGNED NOT NULL,
To_Id bigint UNSIGNED NOT NULL,
Group_Id bigint UNSIGNED NOT NULL,
Initiated_At datetime NOT NULL,
Responded_At datetime DEFAULT NULL,
Response_Status int(1) DEFAULT 0,
PRIMARY KEY `Invite_Id` (`Invite_Id`),
CONSTRAINT UNIQUE KEY `Invite` (`From_Id`, `To_Id`, `Group_Id`),
FOREIGN KEY (From_Id) REFERENCES User(P_Id),
FOREIGN KEY (To_Id) REFERENCES User(P_Id),
FOREIGN KEY (Group_Id) REFERENCES Groups(Group_Id),
FOREIGN KEY (Response_Status) REFERENCES Invite_Status(Invite_Status_Id));
