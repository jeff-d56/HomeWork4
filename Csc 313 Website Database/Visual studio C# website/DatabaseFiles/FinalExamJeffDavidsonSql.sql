DROP DATABASE IF EXISTS DogStairsInc;
CREATE DATABASE IF NOT EXISTS DogStairsInc;
USE DogStairsInc;

CREATE TABLE Customer (
	customerNumber INT(11) NOT NULL,
  	customerFName varchar(50) NOT NULL,
	customerLName varchar(50) NOT NULL,
  	phone varchar(50) NOT NULL,
  	addressLine1 varchar(50) NOT NULL,
  	addressLine2 varchar(50) DEFAULT NULL,
  	city varchar(50) NOT NULL,
  	state varchar(50) DEFAULT NULL,
  	postalCode varchar(15) DEFAULT NULL,
  	country varchar(50) NOT NULL,
	PRIMARY KEY (customerNumber)
);

CREATE TABLE WoodTypes(
	Wood VARCHAR(15) NOT NULL,
	PRIMARY KEY(Wood)
);

INSERT INTO WoodTypes (Wood) VALUES
	('CHIPBOARD'),
	('FIBERBOARD'),
	('PLYWOOD'),
	('PINE'),
	('BEECH'),
	('ASH'),
	('OAK'),
	('MAPLE'),
	('WALNUT'),
	('MAHOGANY');
	

CREATE TABLE orders (
  orderNumber int(11) NOT NULL,
  orderDate datetime NOT NULL,
  shippedDate datetime DEFAULT NULL,
  status varchar(15) NOT NULL,
  comments text,
  customerNumber int(11) NOT NULL,
  PRIMARY KEY (orderNumber),
  KEY customerNumber (customerNumber),
  CONSTRAINT orders_customerNumber_Fk FOREIGN KEY (customerNumber) REFERENCES customer (customerNumber)
);	
	
CREATE TABLE orderdetails (
  orderNumber int(11) NOT NULL,
  quantityOrdered int(11) NOT NULL,
  stairHeight DOUBLE NOT NULL, 
  stairWidth DOUBLE NOT NULL, 
  stairLength DOUBLE NOT NULL,
  hasCarpet VARCHAR(3) NOT NULL,
  typeWood VARCHAR(15) NOT NULL,
  price double NOT NULL,
  PRIMARY KEY (orderNumber),
  CONSTRAINT orderdetails_orders_Fk FOREIGN KEY (orderNumber) REFERENCES orders (orderNumber),
  CONSTRAINT orderdetails_WoodTypes_Fk FOREIGN KEY (typeWood) REFERENCES woodTypes (Wood)
);
	
