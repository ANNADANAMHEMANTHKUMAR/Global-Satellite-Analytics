# Data Dictionary Version 1

| Column | Data Type | Description |
|---------|----------|-------------|
| norad_id | Integer | Unique NORAD satellite identifier |
| name | String | Satellite name |
| object_type | Category | Type of object |
| satellite_constellation | String | Satellite constellation |
| altitude_km | Float | Orbital altitude in kilometers |
| altitude_category | Category | Orbit classification |
| orbital_band | Category | Orbital region |
| congestion_risk | Category | Congestion level |
| inclination | Float | Orbital inclination |
| eccentricity | Float | Orbit eccentricity |
| launch_year_estimate | Integer | Estimated launch year |
| days_in_orbit_estimate | Integer | Estimated operational age |
| orbit_lifetime_category | Category | Lifetime classification |
| mean_motion | Float | Revolutions per day |
| epoch | Datetime | Epoch timestamp |
| data_source | String | Source of dataset |
| snapshot_date | Date | Dataset snapshot date |
| country | String | Owning country |
| last_seen | Datetime | Latest observation |