 CREATE DATABASE mvolgyi_mtorres;
 GO
 USE mvolgyi_mtorres;
 GO

 CREATE TABLE HostCountry (
     HostID int NOT NULL PRIMARY KEY IDENTITY,
     Country varchar(255) NOT NULL,
     StartDate varchar(255),
     EndDate varchar(255)
 );
 GO
 CREATE TABLE Stadiums (
     StadiumID int NOT NULL PRIMARY KEY IDENTITY,
     StadiumName varchar(255) NOT NULL,
     Capacity int,
     StadiumLocation varchar(255)
 );
 GO
 CREATE TABLE NationalTeams (
     NationalTeamId int NOT NULL PRIMARY KEY IDENTITY,
     Country varchar(255) NOT NULL,
     EarnedPoints int
 );
 GO
 CREATE TABLE Players (
     DocumentId int NOT NULL PRIMARY KEY,
     NationalTeamId int FOREIGN KEY REFERENCES NationalTeams(NationalTeamId),
     FirstName varchar(255) NOT NULL,
     LastName varchar(255) NOT NULL,
     PlayerNationality varchar(255) NOT NULL,
     PlayerBirthdate DATE NOT NULL,
     Dorsal int,
     Position VARCHAR(255),
     PlayerTitular int,
     PlayerSub int
 );

 CREATE TABLE Groups (
     GroupsId int NOT NULL PRIMARY KEY IDENTITY,
     NationalTeamId int FOREIGN KEY REFERENCES NationalTeams(NationalTeamId),
     GoupType varchar(255) NOT NULL,
     FirstPosition varchar(255) NOT NULL,
     SecondPosition varchar(255) NOT NULL
 );

 GO
  CREATE TABLE Matches (
     MatchtId int NOT NULL PRIMARY KEY IDENTITY,
     NationalTeamId int FOREIGN KEY REFERENCES NationalTeams(NationalTeamId),
     MatchType varchar(255) NOT NULL,
     GroupsId int FOREIGN KEY REFERENCES Groups(GroupsId),
     NationalTeamsId INT NOT NULL,
     GoalsHome int,
     GoalsAway int,
     StadiumID int NOT NULL,
     MatchDate DATE,
     MatchLenght DATETIME,
     MaxGoalScorer VARCHAR(255),
     RefereeId int NOT NULL,
     MatchTicket int NOT NULL
 );
 GO

 CREATE TABLE GroupMatches (
     GroupMatchesId int NOT NULL PRIMARY KEY IDENTITY,
     GroupsId int FOREIGN KEY REFERENCES Groups(GroupsId),
     MatchtId int FOREIGN KEY REFERENCES Matches(MatchtId)
 );
 GO


 CREATE TABLE Referees (
     RefereeId int NOT NULL PRIMARY KEY IDENTITY,
     FirstName VARCHAR(255) NOT NULL,
     LastName VARCHAR(255) NOT NULL,
     DocumentId INT,
     DocumentType VARCHAR(255),
     RefereeNationality VARCHAR(255)
 );
 GO

 CREATE TABLE MatchTickets (
     MatchTicketId int NOT NULL PRIMARY KEY IDENTITY,
     TicketsQuantity INT NOT NULL,
     MatchtId INT NOT NULL,
     DocumentId INT,
     DocumentType VARCHAR(255),
     Nationality VARCHAR(255),
     DayOfPurchase DATE
 );
 GO

 CREATE TABLE FootballWarnings (
     FootballWarningId int NOT NULL PRIMARY KEY IDENTITY,
     DocumentId int FOREIGN KEY REFERENCES Players(DocumentId),
     YellowCards INT,
     RedCards INT,
     NumberOfRedCards int,
     NumberOfYellowCards int
 );
 GO

 CREATE TABLE Injuries (
     InjuryId int NOT NULL PRIMARY KEY IDENTITY,
     InjuryType varchar(255),
     StadiumID INT NOT NULL,
     ReincorporationDate DATE,
	 DocumentId int FOREIGN KEY REFERENCES Players(DocumentId)
 );

 CREATE TABLE PlayedMatches(
	PlayedMatches int not null primary key identity,
	MatchtId int foreign key references Matches(MatchtId),
	MatchTicketId int foreign key references MatchTickets(MatchTicketId),
	StadiumID int foreign key references Stadiums(StadiumID),
	RefereeId int foreign key references Referees(RefereeId),
	NationalTeamId int foreign key references NationalTeams(NationalTeamId),
	GroupMatchesId int foreign key references GroupMatches(GroupMatchesId)
 );
 GO


ALTER TABLE HostCountry
ADD NationalTeamId int;
GO

ALTER TABLE HostCountry
ADD FOREIGN KEY (NationalTeamId) REFERENCES NationalTeams(NationalTeamId); 
GO


