-- =========================================================
-- File: window_functions.sql
-- Purpose: Demonstrates SQL window functions for ranking,
-- cumulative analysis, and advanced satellite insights.
-- =========================================================

USE satellite_db;

SELECT
    norad_id,
    launch_year_estimate,
    RANK() OVER (ORDER BY launch_year_estimate DESC) AS launch_rank
FROM current_catalog;

SELECT
    norad_id,
    days_in_orbit_estimate,
    SUM(days_in_orbit_estimate)
    OVER (ORDER BY days_in_orbit_estimate) AS running_total_days
FROM current_catalog;

SELECT
    norad_id,
    days_in_orbit_estimate,
    LAG(days_in_orbit_estimate)
    OVER (ORDER BY days_in_orbit_estimate) AS previous_days
FROM current_catalog;

SELECT
    norad_id,
    days_in_orbit_estimate,
    LEAD(days_in_orbit_estimate)
    OVER (ORDER BY days_in_orbit_estimate) AS next_days
FROM current_catalog;