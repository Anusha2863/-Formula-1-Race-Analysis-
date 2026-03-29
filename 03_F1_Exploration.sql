---------------DATA EXPLORATION-----------

--Total number of drivers
SELECT COUNT(*) AS total_drivers
FROM drivers;

--Total number of races
SELECT COUNT(*) AS total_races
FROM races;

--List all unique nationalities
SELECT DISTINCT driver_nationality
FROM drivers;

--Total races per year
SELECT year, COUNT(*) AS total_races
FROM races
GROUP BY year
ORDER BY year;

--Total points scored
SELECT SUM(points) AS total_points
FROM results;

--Top 10 drivers by total wins
SELECT driverId, COUNT(*) AS wins
FROM results
WHERE position = 1
GROUP BY driverId
ORDER BY wins DESC
LIMIT 10;

--Top teams by total points
SELECT constructorId, SUM(points) AS total_points
FROM results
GROUP BY constructorId
ORDER BY total_points DESC
LIMIT 10;

--Average points per race
SELECT raceId, AVG(points) AS avg_points
FROM results
GROUP BY raceId;

--Drivers with most races participated
SELECT driverId, COUNT(*) AS races_count
FROM results
GROUP BY driverId
ORDER BY races_count DESC
LIMIT 10;

--Total wins per year
SELECT r.year, COUNT(*) AS wins
FROM results res
JOIN races r ON res.raceId = r.raceId
WHERE res.position = 1
GROUP BY r.year
ORDER BY r.year;

--Driver with highest total points
SELECT driverId, SUM(points) AS total_points
FROM results
GROUP BY driverId
ORDER BY total_points DESC
LIMIT 1;

--Best finishing position per driver
SELECT driverId, MIN(position) AS best_position
FROM results
GROUP BY driverId;

--Most consistent driver
SELECT driverId, AVG(position) AS avg_position
FROM results
GROUP BY driverId
ORDER BY avg_position ASC
LIMIT 10;

--Fastest lap speed by driver
SELECT driverId, MAX(fastestLapSpeed) AS max_speed
FROM results
GROUP BY driverId
ORDER BY max_speed DESC
LIMIT 10;

--Total podium finishes
SELECT driverId, COUNT(*) AS podiums
FROM results
WHERE position <= 3
GROUP BY driverId
ORDER BY podiums DESC;

--Rank drivers by total points
SELECT 
    driverId,
    SUM(points) AS total_points,
    RANK() OVER (ORDER BY SUM(points) DESC) AS rank
FROM results
GROUP BY driverId;

--Top driver per year
SELECT *
FROM (
    SELECT 
        r.year,
        res.driverId,
        SUM(res.points) AS total_points,
        RANK() OVER (PARTITION BY r.year ORDER BY SUM(res.points) DESC) AS rank
    FROM results res
    JOIN races r ON res.raceId = r.raceId
    GROUP BY r.year, res.driverId
) t
WHERE rank = 1;

--Win percentage per driver
SELECT 
    driverId,
    COUNT(*) FILTER (WHERE position = 1) * 100.0 / COUNT(*) AS win_percentage
FROM results
GROUP BY driverId
ORDER BY win_percentage DESC;

--Driver performance trend
SELECT 
    r.year,
    res.driverId,
    SUM(res.points) AS yearly_points
FROM results res
JOIN races r ON res.raceId = r.raceId
GROUP BY r.year, res.driverId
ORDER BY r.year;

--Best team per year
SELECT *
FROM (
    SELECT 
        r.year,
        res.constructorId,
        SUM(res.points) AS total_points,
        RANK() OVER (PARTITION BY r.year ORDER BY SUM(res.points) DESC) AS rank
    FROM results res
    JOIN races r ON res.raceId = r.raceId
    GROUP BY r.year, res.constructorId
) t
WHERE rank = 1;
