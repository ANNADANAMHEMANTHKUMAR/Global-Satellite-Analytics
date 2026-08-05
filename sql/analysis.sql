-- =========================================================
-- File: analysis.sql
-- Purpose: Contains SQL queries used to analyze the satellite
-- dataset and generate business insights and KPIs.
-- =========================================================

USE satellite_db;

-- No lookup tables available in the current dataset.because we have one table.

-- Aggregations.

-- Average Mean Motion by Object Type.
SELECT
    object_type,
    COUNT(*) AS total_objects,
    ROUND(AVG(mean_motion),2) AS avg_mean_motion
FROM current_catalog
GROUP BY object_type
ORDER BY avg_mean_motion DESC;

-- Average Mean Motion by Altitude Category.
SELECT
    altitude_category,
    COUNT(*) AS total_objects,
    ROUND(AVG(mean_motion),2) AS avg_mean_motion
FROM current_catalog
GROUP BY altitude_category
ORDER BY avg_mean_motion DESC;

-- Average Mean Motion by Country.
SELECT
    country,
    COUNT(*) AS total_objects,
    ROUND(AVG(mean_motion),2) AS avg_mean_motion
FROM current_catalog
GROUP BY country
ORDER BY total_objects DESC;

-- Average Mean Motion by Eccentricity.
SELECT
    eccentricity,
    ROUND(AVG(mean_motion),2) AS avg_mean_motion
FROM current_catalog
GROUP BY eccentricity
ORDER BY eccentricity;

-- KPI queries

-- Total Satellites.
SELECT COUNT(*) AS total_satellites
FROM current_catalog;

-- Total Countries.
SELECT COUNT(DISTINCT country) AS total_countries
FROM current_catalog;

-- Average Mean Motion.
SELECT ROUND(AVG(mean_motion),2) AS average_mean_motion
FROM current_catalog;

-- Average Altitude.
SELECT ROUND(AVG(altitude_km),2) AS average_altitude
FROM current_catalog;

-- Total Payloads.
SELECT COUNT(*) AS total_payloads
FROM current_catalog
WHERE object_type='PAYLOAD';

-- Total Debris.
SELECT COUNT(*) AS total_debris
FROM current_catalog
WHERE object_type='DEBRIS';

-- Highest Mean Motion.
SELECT MAX(mean_motion) AS highest_mean_motion
FROM current_catalog;

-- Lowest Mean Motion.
SELECT MIN(mean_motion) AS lowest_mean_motion
FROM current_catalog;


