-- Create database

DROP DATABASE IF EXISTS car_dealership_database;

CREATE DATABASE car_dealership_database;

USE car_dealership_database;

-- create tables

CREATE TABLE dealerships
(
dealership_id INT NOT NULL AUTO_INCREMENT,
dealership_name VARCHAR(50) NOT NULL,
address VARCHAR(50) NOT NULL,
phone VARCHAR(12) NOT NULL,
PRIMARY KEY (dealership_id)
);

CREATE TABLE vehicles
(
VIN VARCHAR(17),
Year INT NOT NULL,
Make VARCHAR(50),
Model VARCHAR(50),
VehicleType VARCHAR(50),
Color VARCHAR(50),
Odometer INT NOT NULL,
price DOUBLE NOT NULL,
sold BOOLEAN NOT NULL,
PRIMARY KEY (VIN)
);

CREATE TABLE inventory
(
dealership_id INT NOT NULL,
VIN VARCHAR(17)
);

CREATE TABLE sales_contracts
(
contract_id INT AUTO_INCREMENT,
VIN VARCHAR(17),
PRIMARY KEY (contract_id)
);

-- create foreign keys
ALTER TABLE sales_contracts
ADD CONSTRAINT VIN
FOREIGN KEY (VIN) REFERENCES vehicles(VIN);

-- Add vehicles
INSERT INTO vehicles (VIN, Year, Make, Model, VehicleType, Color, Odometer, price, sold)
VALUES('H1GCM82633A123456',2003,'Honda','Accord','Sedan','Silver',125000,15500,TRUE);

INSERT INTO vehicles (VIN, Year, Make, Model, VehicleType, Color, Odometer, price, sold)
VALUES('2G1WF52E959100301',2005,'Chevrolet','Impala', 'Sedan','White',98000,13800,TRUE);

INSERT INTO vehicles (VIN, Year, Make, Model, VehicleType, Color, Odometer, price, sold)
VALUES('JTDKB20U487704671',2008,'Toyota','Prius', 'Hatchback', 'Blue', 80500,18200, FALSE);

INSERT INTO vehicles (VIN, Year, Make, Model, VehicleType, Color, Odometer, price, sold)
VALUES('1C4RJFBG0DC508522',2013,'Jeep','Grand Cherokee','SUV','Black',65200,24500,FALSE);

INSERT INTO vehicles (VIN, Year, Make, Model, VehicleType, Color, Odometer, price, sold)
VALUES('KMHD35LE2HU342177', 2017, 'Hyundai', 'Elantra', 'Sedan', 'Red', 45800,14900,FALSE);

INSERT INTO vehicles (VIN, Year, Make, Model, VehicleType, Color, Odometer, price, sold)
VALUES('5J6RM4H55CL008235',2012,'Honda','CR-V', 'SUV', 'Gray', 72100,21000, FALSE);
-- dealerships
INSERT INTO dealerships(dealership_name, address, phone)
VALUES('Speedy Motors','123 Main Street, Springfield, IL 62701',2175551234);

INSERT INTO dealerships(dealership_name, address, phone)
VALUES('Elite Auto Sales','456 Oak Avenue, Hillsboro, TX 76645',2545555678);

INSERT INTO dealerships(dealership_name, address, phone)
VALUES('Apex Motors','789 Pine Road, Greenville, SC 29601',8645559012);

INSERT INTO dealerships(dealership_name, address, phone)
VALUES('Apex Motors','789 Pine Road, Greenville, SC 29601',8645559012);

INSERT INTO dealerships(dealership_name, address, phone)
VALUES('Victory Auto Center','567 Maple Lane, Manchester, NH 03101',6035557890);