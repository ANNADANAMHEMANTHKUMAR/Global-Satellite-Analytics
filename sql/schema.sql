-- Create Database
CREATE DATABASE IF NOT EXISTS satellite_db;

USE satellite_db;

CREATE TABLE `current_catalog` (
  `norad_id` int NOT NULL,
  `name` text,
  `object_type` text,
  `satellite_constellation` text,
  `altitude_km` double DEFAULT NULL,
  `altitude_category` text,
  `orbital_band` text,
  `congestion_risk` text,
  `inclination` double DEFAULT NULL,
  `eccentricity` double DEFAULT NULL,
  `launch_year_estimate` int DEFAULT NULL,
  `days_in_orbit_estimate` int DEFAULT NULL,
  `orbit_lifetime_category` text,
  `mean_motion` double DEFAULT NULL,
  `epoch` text,
  `data_source` text,
  `snapshot_date` text,
  `country` text,
  `last_seen` text,
  PRIMARY KEY (`norad_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

-- Verify Primary Key Uniqueness
SELECT norad_id, COUNT(*)
FROM current_catalog
GROUP BY norad_id
HAVING COUNT(*) > 1;

-- Verify Cleaning
SELECT
    SUM(object_type IS NULL) AS object_type_nulls,
    SUM(country IS NULL) AS country_nulls
FROM current_catalog;