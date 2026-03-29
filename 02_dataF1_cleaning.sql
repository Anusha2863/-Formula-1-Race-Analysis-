-------------DATA CLEANING-----------
--Check Data
SELECT * FROM drivers LIMIT 10;

--Check NULL Values
SELECT *
FROM drivers
WHERE driver_code IS NULL
   OR driver_forename IS NULL
   OR driver_surname IS NULL
   OR driver_dob IS NULL
   OR driver_nationality IS NULL;

--Replace NULL Values
SELECT 
    COALESCE(driver_code, 'NA') AS driver_code
FROM drivers;

--Remove Duplicates
SELECT driverId, COUNT(*)
FROM drivers
GROUP BY driverId
HAVING COUNT(*) > 1;

--Trim & Clean Text
SELECT 
    TRIM(driver_forename) AS clean_name
FROM drivers;

--Standardize Text (Upper/Lower Case)
SELECT 
    UPPER(driver_nationality) AS nationality
FROM drivers;

--Convert Date Format
SELECT 
    CASE 
        WHEN driver_dob LIKE '____-__-__' 
            THEN TO_DATE(driver_dob, 'YYYY-MM-DD')
        ELSE TO_DATE(driver_dob, 'DD-MM-YYYY')
    END AS dob
FROM drivers;

SELECT driver_dob
FROM drivers
LIMIT 20;

--Clean Time Column
SELECT 
    SPLIT_PART(fastestLapTime, ' ', 3) AS lap_time
FROM results;

--Handle Outliers
SELECT *
FROM results
WHERE points < 0 OR points > 50;

--Remove Invalid Driver Names
SELECT *
FROM drivers
WHERE TRIM(driver_forename) = '' 
   OR TRIM(driver_surname) = '';

--Standardize Driver Full Name
SELECT 
    driverId,
    CONCAT(TRIM(driver_forename), ' ', TRIM(driver_surname)) AS full_name
FROM drivers;

--Fix Nationality Inconsistency
SELECT DISTINCT driver_nationality
FROM drivers;
SELECT 
    CASE 
        WHEN driver_nationality IN ('UK', 'U.K') THEN 'UNITED KINGDOM'
        ELSE UPPER(driver_nationality)
    END AS nationality
FROM drivers;

--Remove Invalid Points in Results
SELECT *
FROM results
WHERE points IS NULL OR points < 0;

--Clean Fastest Lap Time
SELECT 
    fastestLapTime,
    SPLIT_PART(fastestLapTime, ' ', 3) AS clean_time
FROM results;

--Create Clean Final Table
CREATE TABLE clean_drivers AS
SELECT 
    driverId,
    TRIM(driver_forename) AS forename,
    TRIM(driver_surname) AS surname,
    UPPER(driver_nationality) AS nationality,
    CASE 
        WHEN driver_dob ~ '^\d{4}-\d{2}-\d{2}$'
        THEN TO_DATE(driver_dob, 'YYYY-MM-DD')
        ELSE NULL
    END AS dob
FROM drivers;
