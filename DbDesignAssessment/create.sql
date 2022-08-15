USE pets;
DROP TABLE appointment;
DROP TABLE petvaccination;
DROP TABLE petcustomer;
DROP TABLE pet;
DROP TABLE doctoranimal;



CREATE OR REPLACE TABLE doctor (
	id				INT		PRIMARY KEY AUTO_INCREMENT,
	firstName	VARCHAR(30),
	lastName		VARCHAR(30),
	whenJoined	DATE
	);
	
	
	
CREATE OR REPLACE TABLE animal (
	id				INT		PRIMARY KEY AUTO_INCREMENT,
	animalName	VARCHAR(30)
	);
	


CREATE OR REPLACE TABLE doctoranimal (
	doctorId	INT,
	animalId	INT,
	
	FOREIGN KEY (doctorId) REFERENCES doctor(id),
	FOREIGN KEY (animalId) REFERENCES animal(id)
	);
	
	
	
CREATE OR REPLACE TABLE customer (
	id				INT		PRIMARY KEY AUTO_INCREMENT,
	firstName	VARCHAR(30),
	lastName		VARCHAR(30),
	mailAddress	VARCHAR(30),
	phoneNo		VARCHAR(30)
	);
	
	
	
CREATE OR REPLACE TABLE pet (
	id				INT		PRIMARY KEY AUTO_INCREMENT,
	animalId		INT,
	petName		VARCHAR(30),
	birthDate	DATE,
	
	FOREIGN KEY (animalId) REFERENCES animal(id)
	);
	
	
	
CREATE OR REPLACE TABLE petcustomer (
	petId			INT,
	customerId	INT,
	
	FOREIGN KEY (petId) REFERENCES pet(id),
	FOREIGN KEY (customerId) REFERENCES customer(id)
	);
	
	
	
CREATE OR REPLACE TABLE vaccination (
	id				INT		PRIMARY KEY AUTO_INCREMENT,
	vaxName		VARCHAR(30)
	);
	
	
	
CREATE OR REPLACE TABLE petvaccination (
	id				INT		PRIMARY KEY AUTO_INCREMENT,
	vaxId			INT,
	vaxDate		DATE,
	petId			INT,
	
	FOREIGN KEY (vaxId) REFERENCES vaccination(id),
	FOREIGN KEY (petId) REFERENCES pet(id)
	);
	
	
	
CREATE OR REPLACE TABLE appointment (
	id				INT		PRIMARY KEY AUTO_INCREMENT,
	customerId	INT,
	petId INT,
	doctorId		INT,
	apptTime	DATETIME,
	
	FOREIGN KEY (customerId) REFERENCES customer(id)	
	);
	
	
