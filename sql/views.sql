-- =========================================================
-- File: views.sql
-- Purpose: Creates SQL views that simplify querying and
-- reporting for satellite analysis and dashboarding.
-- =========================================================

USE satellite_db;

CREATE VIEW vw_total_satellites AS
SELECT COUNT(*) AS total_satellites
FROM current_catalog;

SELECT * FROM vw_total_satellites;

CREATE VIEW vw_total_countries AS
SELECT COUNT(DISTINCT country) AS total_countries
FROM current_catalog;

SELECT * FROM vw_total_countries;

SELECT VERSION();

-- Total Payloads
CREATE VIEW vw_total_payloads AS
SELECT COUNT(*) AS total_payloads
FROM current_catalog
WHERE object_type = 'PAYLOAD';

SELECT * FROM vw_total_payloads;

-- Total Debris
CREATE VIEW vw_total_debris AS
SELECT COUNT(*) AS total_debris
FROM current_catalog
WHERE object_type = 'DEBRIS';

SELECT * FROM vw_total_debris;

-- Average Mean Motion
CREATE VIEW vw_avg_mean_motion AS
SELECT AVG(mean_motion) AS avg_mean_motion
FROM current_catalog;

SELECT * FROM vw_avg_mean_motion;