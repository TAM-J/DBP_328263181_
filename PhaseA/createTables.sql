CREATE TABLE Brigade
(
  BrigadeNumber NUMBER NOT NULL,
  BrigadeName VARCHAR2(20) NOT NULL,
  NumberOfBattalions NUMBER NOT NULL,
  PRIMARY KEY (BrigadeNumber)
);

CREATE TABLE Battalion
(
  BattalionNumber NUMBER NOT NULL,
  BattalionName VARCHAR2(20) NOT NULL,
  NumberOfCompanies NUMBER NOT NULL,
  BrigadeNumber NUMBER NOT NULL,
  PRIMARY KEY (BattalionNumber),
  FOREIGN KEY (BrigadeNumber) REFERENCES Brigade(BrigadeNumber)
);

CREATE TABLE Company
(
  CompanyNumber NUMBER NOT NULL,
  CompanyName VARCHAR2(20) NOT NULL,
  NumberOfPlatoons NUMBER NOT NULL,
  BattalionNumber NUMBER NOT NULL,
  PRIMARY KEY (CompanyNumber),
  FOREIGN KEY (BattalionNumber) REFERENCES Battalion(BattalionNumber)
);

CREATE TABLE Platoon
(
  PlatoonNumber NUMBER NOT NULL,
  PlatoonName VARCHAR2(20) NOT NULL,
  NumberOfSquads NUMBER NOT NULL,
  CompanyNumber NUMBER NOT NULL,
  PRIMARY KEY (PlatoonNumber),
  FOREIGN KEY (CompanyNumber) REFERENCES Company(CompanyNumber)
);

CREATE TABLE Squad
(
  SquadNumber NUMBER NOT NULL,
  SquadName VARCHAR2(20) NOT NULL,
  NumberOfSoldiers NUMBER NOT NULL,
  PlatoonNumber NUMBER NOT NULL,
  PRIMARY KEY (SquadNumber),
  FOREIGN KEY (PlatoonNumber) REFERENCES Platoon(PlatoonNumber)
);

CREATE TABLE Soldier
(
  PersonalNumber NUMBER NOT NULL,
  SName VARCHAR2(40) NOT NULL,
  BirthDate DATE NOT NULL,
  SRank VARCHAR2(20) NOT NULL,
  DeploymentDate DATE NOT NULL,
  SquadNumber NUMBER NOT NULL,
  PRIMARY KEY (PersonalNumber),
  FOREIGN KEY (SquadNumber) REFERENCES Squad(SquadNumber)
);
