CREATE DATABASE satellite_db;

USE satellite_db;

SELECT norad_id, COUNT(*) AS duplicate_count
FROM current_catalog
GROUP BY norad_id
HAVING COUNT(*) > 1;

SELECT COUNT(*) AS null_norad
FROM current_catalog
WHERE norad_id IS NULL;

ALTER TABLE current_catalog
ADD PRIMARY KEY (norad_id);

DESCRIBE current_catalog;

SELECT
    SUM(object_type IS NULL) AS object_type_nulls,
    SUM(country IS NULL) AS country_nulls
FROM current_catalog;

SHOW CREATE TABLE current_catalog;