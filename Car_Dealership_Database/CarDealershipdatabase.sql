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
VIN INT NOT NULL,
sold varchar(50) NOT NULL,
PRIMARY KEY (VIN)
);

CREATE TABLE inventory
(
dealership_id INT NOT NULL,
VIN INT NOT NULL
);

CREATE TABLE sales_contracts
(
contract_id INT AUTO_INCREMENT,
VIN INT NOT NULL,
PRIMARY KEY (contract_id)
);

-- create foreign keys
ALTER TABLE sales_contracts
ADD CONSTRAINT VIN
FOREIGN KEY (VIN) REFERENCES vehicles(VIN);
