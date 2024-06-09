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
VIN VARCHAR(30) NOT NULL,
sold varchar(10) NOT NULL,
PRIMARY KEY (VIN)
);

CREATE TABLE inventory
(
dealership_id INT NOT NULL,
VIN VARCHAR(30) NOT NULL
);

CREATE TABLE sales_contracts
(
contract_id INT AUTO_INCREMENT,
VIN VARCHAR(30) NOT NULL,
PRIMARY KEY (contract_id)
);

-- create foreign keys
ALTER TABLE sales_contracts
ADD CONSTRAINT VIN
FOREIGN KEY (VIN) REFERENCES vehicles(VIN);

-- inserting dealerships

INSERT INTO dealerships(
dealership_name,
address,
phone
)
VALUES(
'Elite Auto Haven',
'1234 Maple Street, Cityville',
'5555551234'
);

INSERT INTO dealerships(
dealership_name,
address,
phone
)
VALUES(
'Luxury Motors Emporium',
'5678 Oak Avenue, Townsville',
'5555551234'
);

INSERT INTO dealerships(
dealership_name,
address,
phone
)
VALUES(
'Luxury Motors Emporium',
'5678 Oak Avenue, Townsville',
'5555555678'
);

INSERT INTO dealerships(
dealership_name,
address,
phone
)
VALUES(
'Speedy Wheels Palace',
' 9101 Elm Road, Villageton',
'5555559101'
);

INSERT INTO dealerships(
dealership_name,
address,
phone
)
VALUES(
'Prestige Drive Center',
'2468 Pine Lane, Hamletown',
'5555552468'
);

-- insert vehicles

INSERT INTO vehicles(
vin,
sold
)
VALUES(
'1GNEK13Z2VJ123456',
'False'
);

INSERT INTO vehicles(
vin,
sold
)
VALUES(
'2T2BK1BA3DC123456',
'False'
);

INSERT INTO vehicles(
vin,
sold
)
VALUES(
'3FA6P0SU0JR123456',
'False'
);

INSERT INTO vehicles(
vin,
sold
)
VALUES(
'4S3BNAB65J3Z123456',
'False'
);

INSERT INTO vehicles(
vin,
sold
)
VALUES(
'5YJ3E1EA5JF123456',
'True'
);

INSERT INTO vehicles(
vin,
sold
)
VALUES(
'6G2VX12U55L123456',
'True'
);

-- Inventory data

INSERT INTO inventory(
dealership_ID,
VIN
)
VALUES(
1,
'4S3BNAB65J3Z123456'
);

INSERT INTO inventory(
dealership_ID,
VIN
)
VALUES(
2,
'3FA6P0SU0JR123456'
);

INSERT INTO inventory(
dealership_ID,
VIN
)
VALUES(
3,
'2T2BK1BA3DC123456'
);

INSERT INTO inventory(
dealership_ID,
VIN
)
VALUES(
4,
'1GNEK13Z2VJ123456'
);

-- Sales contract data





