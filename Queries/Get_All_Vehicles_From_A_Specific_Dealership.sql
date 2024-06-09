USE car_dealership_database;

SELECT dealership_id
,VIN
FROM inventory
WHERE dealership_id = 1
ORDER BY dealership_id;