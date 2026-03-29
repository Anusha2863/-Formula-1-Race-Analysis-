CREATE DATABASE f1_race_analysis;
USE f1_race_analysis;

--Create Tables
--drivers table
DROP TABLE IF EXISTS drivers;
CREATE TABLE drivers (
    driverId INT,
    driver_code TEXT,
    driver_forename TEXT,
    driver_surname TEXT,
    driver_dob TEXT,
    driver_nationality TEXT,
    driver_home TEXT
);

--constructors tables
CREATE TABLE constructors (
    constructorId INT PRIMARY KEY,
    constructorRef VARCHAR(50),
    name VARCHAR(100),
    nationality VARCHAR(50)
);

--circuits tables
CREATE TABLE circuits (
    circuitId INT PRIMARY KEY,
    circuitRef VARCHAR(50),
    name VARCHAR(100),
    location VARCHAR(100),
    country VARCHAR(50)
);

--races tables
DROP TABLE IF EXISTS races;
CREATE TABLE races (
    raceId INT,
    year INT,
    round INT,
    circuitId INT
);
--results tables
DROP TABLE IF EXISTS results;
CREATE TABLE results (
    resultId INT,
    raceId INT,
    driverId INT,
    constructorId INT,
    grid_position INT,
    position INT,
    points FLOAT,
    laps INT,
    fastestLap INT,
    fastestLapRank INT,
    fastestLapTime TEXT,
    fastestLapSpeed FLOAT,
    statusId INT
);
--driver_standings table
CREATE TABLE driver_standings (
    driverStandingsId INT PRIMARY KEY,
    raceId INT,
    driverId INT,
    points FLOAT,
    position INT,
    wins INT
);
