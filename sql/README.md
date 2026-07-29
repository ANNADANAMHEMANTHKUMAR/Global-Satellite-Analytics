# SQL Scripts

This folder contains all SQL scripts used in the Global Satellite Analytics with Space Sustainability project.

## Files

### schema.sql
- Creates and validates the database schema.
- Defines the primary key.
- Includes data quality validation queries.

### queries.sql
- SQL aggregation queries.
- KPI queries using COUNT() and AVG().
- GROUP BY analysis for satellite data.

### views.sql
- SQL views for key project KPIs.
- Includes:
  - Total Satellites
  - Total Countries
  - Total Payloads
  - Total Debris
  - Average Mean Motion

### window_functions.sql
Demonstrates SQL window functions:
- RANK()
- SUM() OVER() (Running Total)
- LAG()
- LEAD()

## Database

- MySQL
- Database: `satellite_db`
- Dataset: `current_catalog.csv`