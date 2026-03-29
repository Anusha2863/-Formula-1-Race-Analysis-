-------------------BUSINESS INSIGHTS--------------
1.---Top Performing Driver
SELECT driverId, SUM(points) AS total_points
FROM results
GROUP BY driverId
ORDER BY total_points DESC
LIMIT 1;

2.--Most Dominant Team
SELECT constructorId, SUM(points) AS total_points
FROM results
GROUP BY constructorId
ORDER BY total_points DESC
LIMIT 1;

3.--Year-wise Growth Trend
SELECT r.year, SUM(res.points) AS total_points
FROM results res
JOIN races r ON res.raceId = r.raceId
GROUP BY r.year
ORDER BY r.year;

4.--Most Consistent Driver
SELECT driverId, AVG(position) AS avg_position
FROM results
GROUP BY driverId
ORDER BY avg_position ASC
LIMIT 5;

5.--Drivers with Highest Win Rate
SELECT 
    driverId,
    COUNT(*) FILTER (WHERE position = 1) * 100.0 / COUNT(*) AS win_rate
FROM results
GROUP BY driverId
ORDER BY win_rate DESC
LIMIT 5;

6.--Top 5 Drivers by Podium Finishes
SELECT driverId, COUNT(*) AS podiums
FROM results
WHERE position <= 3
GROUP BY driverId
ORDER BY podiums DESC
LIMIT 5;

7.--Best Performing Team per Year
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

8.--Drivers with Maximum Race Participation
SELECT driverId, COUNT(*) AS total_races
FROM results
GROUP BY driverId
ORDER BY total_races DESC
LIMIT 5;

9.--Underdog Analysis
SELECT driverId, COUNT(*) AS comeback_races
FROM results
WHERE grid_position > 10 AND position <= 3
GROUP BY driverId
ORDER BY comeback_races DESC;

10.--Fastest Drivers
SELECT driverId, MAX(fastestLapSpeed) AS max_speed
FROM results
GROUP BY driverId
ORDER BY max_speed DESC
LIMIT 5;