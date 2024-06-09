USE car_dealership_database;

-- search in vehicles

SELECT VIN
, sold
FROM vehicles
WHERE VIN ='4S3BNAB65J3Z123456'
ORDER BY VIN;

-- search in inventory

SELECT VIN
, dealership_id
FROM inventory
WHERE VIN ='4S3BNAB65J3Z123456'
ORDER BY VIN