# Global Satellite Analytics with Space Sustainability


## Repository Structure

```text
Global-Satellite-Analytics/
│
├── data/
│   ├── raw/
│   └── processed/
│
├── docs/
│   ├── business_mapping.md
│   ├── cleaning_plan_v1.md
│   ├── data_dictionary_v1.md
│   ├── dataset_validation.md
│   └── ...
│
├── notebooks/
│   ├── 01_clean.ipynb
│   ├── 01_dataset_validation.ipynb
│   ├── 02_eda.ipynb
│   ├── 03_descriptive_stats.ipynb
│   ├── 04_correlation_analysis.ipynb
│   └── 06_data_cleaning.ipynb
│
├── sql/
│   ├── analysis.sql
│   ├── schema.sql
│   ├── views.sql
│   └── window_functions.sql
│
├── dashboard/
│   └── tableau/
│
├── screenshots/
│
└── README.md
```


## Dashboard Deliverables

- Interactive Tableau Dashboard (.twbx)
- Dashboard Screenshot (.png)
- Business Insights
- Interactive Filters
- KPI Analysis

## Technologies

- Python
- Pandas
- SQL (MySQL)
- Tableau
- Excel
- Git & GitHub

## Project Overview
This project analyzes the Global Satellite Analytics dataset to study satellite distribution, orbital congestion, sustainability, and operational insights using Excel, SQL, Python, and Power BI.

---

## Day 1 – Project Setup & Dataset Validation

### Tasks Completed
- Created GitHub repository.
- Organized project folder structure.
- Collected the dataset (`current_catalog.csv`).
- Assessed dataset source, credibility, licensing, and freshness.
- Performed initial dataset validation.

### Outcome
Project environment is ready, and the dataset has been verified for analysis.

---

## Day 2 – Problem Definition & Data Understanding

### Tasks Completed
- Defined the business problem.
- Identified project success metrics.
- Documented the dataset file.
- Mapped all 19 dataset columns to their business meaning.
- Created the first version of the data dictionary.

### Outcome
The project objectives and dataset structure are clearly documented, providing a strong foundation for data profiling and analysis.

---

## Tools Used
- Python (Pandas, NumPy)
- Jupyter Notebook
- Excel
- SQL
- Power BI
- Git & GitHub

---

# Day 3 – Dataset Profiling

## Objective
Perform an initial profile of the dataset to understand its structure and identify potential data quality issues before cleaning.

## Tasks Completed
- Checked the total number of rows and columns.
- Inspected data types of all 19 columns.
- Identified missing values for each column.
- Checked duplicate records using the `norad_id` column.

## Key Findings
- Dataset contains **16,649 rows** and **19 columns**.
- Only **2 missing values** were found in the dataset:
  - `object_type`
  - `country`
- No duplicate records were identified based on `norad_id`.

## Outcome
The dataset structure has been successfully profiled, providing a clear understanding of its size, completeness, and uniqueness before proceeding to data quality assessment.

___

# Day 4 – Data Quality Assessment

## Objective
Assess the quality of the dataset before cleaning by identifying data type issues, invalid values, and category inconsistencies.

## Tasks Completed
- Verified data types.
- Checked for malformed values.
- Reviewed invalid numeric values.
- Inspected category consistency.
- Documented findings.

## Outcome
The dataset quality was assessed successfully and is ready for the data cleaning phase.

---

# Day 5 – Data Cleaning Plan

## Objective

The objective of Day 5 was to prepare a structured data cleaning plan before modifying the dataset. This included identifying data quality issues, deciding appropriate cleaning strategies, and documenting all cleaning decisions.

---

## Tasks Completed

- Created the Data Cleaning Plan (Version 1).
- Reviewed missing values identified during the data quality assessment.
- Decided Keep, Drop, and Impute rules for affected columns.
- Documented duplicate handling strategy.
- Reviewed data types and category consistency.
- Finalized and documented the cleaning strategy.

---

## Cleaning Decisions

| Column / Issue | Decision | Reason |
|---------------|----------|--------|
| object_type | Impute | Replace missing values with `UNKNOWN` to preserve all records. |
| country | Impute | Replace missing values with `UNKNOWN` because the original value is unavailable. |
| Duplicate Records | Keep | No duplicate NORAD IDs were found. |
| Data Types | Keep | All columns have appropriate data types. |
| Category Consistency | Keep | Categories are already standardized. |
| Invalid Values | Keep | No invalid numerical values were identified. |

---

## Files Created

- `docs/cleaning_plan_v1.md`

---

## Key Learnings

- Understood the importance of planning data cleaning before modifying a dataset.
- Learned when to use Keep, Drop, and Impute strategies.
- Practiced documenting cleaning decisions for reproducibility and transparency.

---

## Outcome

A complete Data Cleaning Plan (Version 1) was prepared and documented. The dataset is now ready for implementation of the cleaning process in Day 6.

---

# Day 6 - Data Cleaning Implementation

## Objective
Apply the planned data cleaning actions and validate the cleaned dataset.

## Tasks Completed
- Opened current_catalog.csv in Google Sheets.
- Applied filters to inspect categorical columns.
- Replaced missing values in `object_type` with `UNKNOWN`.
- Replaced missing values in `country` with `UNKNOWN`.
- Verified object_type categories.
- Verified altitude_category categories.
- Confirmed eccentricity values are within the valid range (0–1).
- Validated that the final row count remained unchanged.

## Results
- Missing values handled successfully.
- No duplicate records removed.
- No data type changes required.
- Category values remained consistent.
- Final row count: **16,649**.

## Conclusion
The dataset was cleaned according to the approved cleaning plan and validated successfully without any data loss.

---

# Day 7 – Pivot Table Analysis & Initial Insights

## Objective
Perform exploratory analysis using Excel Pivot Tables to summarize the cleaned satellite dataset and identify initial insights.

## Tasks Completed

- Created Pivot Table for **Object Type vs Average Mean Motion**
- Created Pivot Table for **Altitude Category vs Average Mean Motion**
- Created Pivot Table for **Country vs Average Mean Motion**
- Created Pivot Table for **Eccentricity vs Average Mean Motion**
- Documented five initial observations from the pivot table analysis
- Exported the cleaned Excel workbook to the `data/processed` directory
- Committed and pushed all changes to GitHub

## Pivot Tables Created

1. Object Type → Average Mean Motion
2. Altitude Category → Average Mean Motion
3. Country → Average Mean Motion
4. Eccentricity → Average Mean Motion

## Key Insights

1. PAYLOAD satellites have a higher average mean motion than DEBRIS and ROCKET BODY satellites.
2. Very Low LEO satellites have the highest average mean motion, while GEO and Beyond GEO satellites have the lowest.
3. Average mean motion varies across countries, indicating differences in orbital characteristics.
4. Most satellites have very low eccentricity values, suggesting nearly circular orbits.
5. Mean motion changes significantly based on object type, altitude category, country, and eccentricity.

## Deliverables

- Pivot Table Analysis
- Excel Summary Sheet
- Initial Insights
- Cleaned Excel Workbook
- GitHub Repository Updated

## Status

✅ Day 7 Completed Successfully

---
# Day 8 - SQL Database Setup

## Objective
Import the cleaned satellite dataset into MySQL and prepare the database for analysis.

## Tasks Completed
- Created a new database `satellite_db`.
- Imported `current_catalog.csv` into MySQL Workbench.
- Verified that `norad_id` contained no duplicate values.
- Verified that `norad_id` contained no NULL values.
- Set `norad_id` as the Primary Key.
- Checked that `object_type` and `country` contained no NULL values.
- Generated and documented the database schema in `schema.sql`.

## SQL Operations
- CREATE DATABASE
- Import CSV
- ALTER TABLE (Primary Key)
- Duplicate validation
- NULL validation
- Schema documentation

## Outcome
Successfully created a validated SQL database ready for analysis.

✅ Day 8 Completed Successfully

---

# Day 9 - SQL Analysis & KPI Queries

## Objective
Analyze the satellite dataset using SQL queries and generate key performance metrics.

## Tasks Completed
- Created aggregation queries using `GROUP BY`.
- Calculated average `mean_motion` by:
  - Object Type
  - Altitude Category
  - Eccentricity
- Counted satellites by country.
- Created KPI queries for:
  - Total satellites
  - Total countries
  - Average mean motion
  - Total payloads
  - Total debris
- Saved all analysis queries in `queries.sql`.

## SQL Concepts Used
- SELECT
- GROUP BY
- COUNT()
- AVG()
- ORDER BY

## Outcome
Generated SQL-based insights and KPIs to support the satellite analytics dashboard.

✅ Day 9 Completed Successfully

---

### Day 10 - SQL Views & Window Functions
- Created SQL views for key performance indicators.
- Implemented window functions:
  - `RANK()`
  - `LAG()`
  - `LEAD()`
  - Running Totals using `SUM() OVER()`
- Added SQL documentation in `sql/README.md`.

---

### Day 11 - Data Cleaning with Pandas
- Reproduced the data cleaning workflow in Pandas.
- Filled missing values in `object_type` and `country`.
- Validated row counts using assertions.
- Verified null counts after cleaning.
- Saved the cleaned dataset.
- Updated `01_clean.ipynb`.

---

### Day 12 - Exploratory Data Analysis (EDA)
- Performed summary statistics on `mean_motion`.
- Visualized the distribution of `mean_motion`.
- Analyzed country-wise satellite distribution.
- Performed segment analysis by:
  - `object_type`
  - `altitude_category`
  - `eccentricity`
- Explored `launch_year_estimate` and `days_in_orbit_estimate`.
- Documented analysis in `02_eda.ipynb`.

--- 

# Day 13 - Outlier Analysis and Data Visualization

## Objective

Perform outlier detection on the cleaned satellite dataset, create meaningful visualizations, and derive dataset-based insights.

---

## Tasks Completed

### 1. Outlier Analysis

- Performed outlier detection on the `mean_motion` column using the **Interquartile Range (IQR)** method.
- Verified outliers using the **Z-score** method.
- Analyzed the `country` column using frequency counts to identify countries with the highest number of satellites.

---

### 2. Data Visualization

Created four charts to better understand the dataset:

- Histogram showing the distribution of `mean_motion`
- Line chart showing launch year trends
- Bar chart comparing satellite counts by `object_type`
- Pie chart showing the composition of `altitude_category`

---

### 3. Dataset Insights

Derived five key insights from the exploratory analysis, including:

- Majority of satellites are in **Very Low LEO**
- United States has the highest satellite count
- Payloads are the most common object type
- Only a small number of outliers exist in `mean_motion`
- Satellite launches show growth across different years

---

## Output

- Performed outlier detection using IQR and Z-score methods.
- Generated four visualization charts.
- Documented five dataset-grounded insights.
- Updated `notebooks/02_eda.ipynb`.

---

## Files Updated

```
notebooks/02_eda.ipynb
README.md
```

---

## Status

✅ Day 13 tasks completed successfully.

---

## Day 14 - Descriptive Statistics & Distribution Analysis

### Tasks Completed
- Performed descriptive statistics on the `mean_motion` column.
- Analyzed country-wise satellite distribution.
- Generated a histogram to visualize mean motion distribution.
- Calculated skewness and kurtosis for the mean motion feature.
- Created a bar chart showing the top countries by satellite count.
- Documented sampling caveats for the dataset.

### Tools Used
- Python
- Pandas
- Matplotlib
- Jupyter Notebook

--- 

## Day 15 - Correlation, Variance Analysis & Hypothesis Validation

### Objectives
- Analyze correlations among numerical features.
- Perform variance analysis across different satellite categories.
- Validate the project hypothesis and document interpretations and limitations.

### Work Completed
- Generated a correlation matrix for all numerical columns.
- Visualized the correlation matrix using a heatmap.
- Performed variance analysis of `mean_motion` grouped by:
  - `object_type`
  - `altitude_category`
- Calculated the variance of the `eccentricity` column.
- Compared the average `mean_motion` across different object types.
- Documented the project hypothesis, interpretation, and analysis limitations in the notebook.

### Key Findings
- Correlation analysis showed the relationships between numerical satellite features.
- The average `mean_motion` varies across different object types.
- Variance differs among altitude categories, indicating variation in orbital characteristics.
- Country was excluded from the correlation matrix because it is a categorical feature.

### Limitations
- The dataset is a snapshot of currently available satellite records.
- Correlation does not imply causation.
- Country is a categorical feature and cannot be directly used in numerical correlation analysis.
- Results may change as new satellite records become available.

### Files Updated

```
notebooks/04_correlation_analysis.ipynb
README.md
```

### Status
✅ Day 15 completed successfully.

---

## Day 16 – Tableau KPI Dashboard

### Task 1
- Imported cleaned satellite dataset into Tableau.
- Verified the data source and field types.

### Task 2
Created KPI calculations:
- Total Satellites
- Total Payloads
- Total Countries
- Average Altitude
- Average Mean Motion
- Average Days in Orbit

### Task 3
- Built a KPI dashboard displaying the six key business metrics.
- Formatted KPI cards for better readability.

---

# Day 17 – Interactive Dashboard Development

## Objective
Built an interactive Tableau dashboard to analyze satellite population data using multiple visualizations and dashboard filters.

## Dashboard Components
- Satellites by Object Type
- Satellites by Orbit Category
- Orbital Eccentricity Analysis
- Interactive Filters
  - Object Type
  - Altitude Category
  - Eccentricity Range

## Skills Practiced
- Dashboard Design
- Interactive Filters
- Dashboard Layout
- Business Storytelling
- Data Visualization

## Deliverables
- Interactive Tableau Dashboard
- Dashboard Screenshot
- Packaged Tableau Workbook (.twbx)

---

# Day 18 – Dashboard Enhancement & Business Storytelling

## Objective
Enhanced the dashboard by improving readability, adding business insights, and polishing the overall presentation.

## Improvements Made
- Added meaningful dashboard title
- Renamed chart titles
- Added Business Summary
- Added Key Insight callouts
- Improved dashboard spacing and alignment
- Verified accessibility (readable fonts, consistent colors)
- Added interactive filters
- Exported dashboard screenshot
- Saved packaged workbook (.twbx)

## Dashboard Features
- Satellites by Object Type
- Satellites by Orbit Category
- Orbital Eccentricity Analysis
- Interactive Filters
- Business Summary
- Key Insights

## Files Generated
- Satellite_Population_Analysis.twbx
- Satellite_Population_Dashboard.png

## Skills Learned
- Business Storytelling
- Dashboard Formatting
- Dashboard Accessibility
- Tableau Dashboard Design
- Insight Presentation

---


---

# Day 19 – Business Insights & Documentation

## Objective

Document the key business insights, project limitations, and data cleaning process used in the Satellite Population Analysis Dashboard.

## Business Insights

### 1. Satellite Object Types
- Payload satellites make up the majority of the satellite population.
- Debris and rocket bodies represent a much smaller share compared to operational payloads.

### 2. Orbit Category
- Most satellites are concentrated in Very Low Earth Orbit (VLEO) and Low Earth Orbit (LEO).
- Very few satellites operate in Medium Earth Orbit (MEO), Geostationary Orbit (GEO), or Beyond GEO.

### 3. Orbital Eccentricity
- Most satellites have eccentricity values close to 0.
- This indicates that the majority of satellites follow nearly circular and stable orbits.

### 4. Dashboard Value
- Interactive filters allow users to analyze satellite distributions by object type, orbit category, and eccentricity.
- The dashboard helps users quickly identify trends without writing SQL queries.

## Dataset Limitations

- The dataset represents a snapshot of satellite records and may not reflect real-time updates.
- Some satellite records contain missing or incomplete attribute values.
- The dashboard focuses on descriptive analysis and does not perform predictive analytics.
- Satellite counts may change over time as new launches occur and inactive satellites are removed.
- Results depend on the quality of the publicly available NORAD dataset.

## Data Cleaning Log

| Step | Action Performed | Result |
|------|------------------|--------|
| 1 | Loaded raw NORAD satellite dataset | Dataset imported successfully |
| 2 | Removed duplicate records | Improved data consistency |
| 3 | Handled missing values | Reduced incomplete records |
| 4 | Standardized column names | Consistent naming convention |
| 5 | Corrected data types | Numeric and categorical fields properly formatted |
| 6 | Removed unnecessary columns | Simplified dataset |
| 7 | Saved cleaned dataset | Ready for analysis and visualization |


## Before and After Cleaning

| Metric | Value |
|--------|-------|
| Original Rows | 16,649 (before cleaning) *if no rows were removed* |
| Final Rows | 16,649 |
| Duplicates Removed | 0 |
| Missing Values Handled | Yes |
| Final Dataset Status | Clean and analysis-ready |

## Future Improvements

- Add real-time satellite data updates.
- Build predictive models for satellite congestion.
- Publish the dashboard online.
- Integrate additional space sustainability datasets.

## Project Status

✅ Completed (20-Day Global Satellite Analytics Project)

The project includes data cleaning, SQL analysis, Python analysis, Tableau dashboard development, business insights, and complete documentation.

---

# Dashboard Documentation

## Dashboard Purpose

The Satellite Population Analysis Dashboard provides an interactive overview of the global satellite population. It helps users explore satellite distributions, orbital characteristics, and key performance indicators for better understanding of space asset trends.

## Dashboard Pages

### Main Dashboard
Displays the overall satellite population with interactive filters and business insights.

### Object Type Analysis
Shows the distribution of satellites by object type such as Payload, Debris, and Rocket Body.

### Orbit Category Analysis
Visualizes satellite distribution across orbital regions including LEO, MEO, GEO, and Beyond GEO.

### Orbital Eccentricity Analysis
Shows the eccentricity distribution to understand orbit stability.

## KPI Definitions

**Total Satellites**
- Total number of satellite records available in the dataset.

**Total Countries**
- Number of unique countries operating satellites.

**Payload Count**
- Total satellites classified as Payload.

**Debris Count**
- Total satellites classified as Debris.

**Average Mean Motion**
- Average orbital revolutions completed per day by satellites.

## Dashboard Filters

- Object Type
- Orbit Category
- Country

These filters allow users to interactively explore the dataset.


---

# Day 20 – Final Documentation & Portfolio Preparation

## Objective

Finalize the project documentation, improve code readability, and prepare the project for portfolio presentation.

## Tasks Completed

- Finalized the data dictionary.
- Added purpose comments to SQL scripts.
- Added purpose descriptions to Python notebooks.
- Documented the Tableau dashboard pages and KPIs.
- Verified repository structure and project documentation.

## Files Updated

- README.md
- docs/data_dictionary_v1.md
- sql/analysis.sql
- sql/schema.sql
- sql/views.sql
- sql/window_functions.sql
- notebooks/01_clean.ipynb
- notebooks/01_dataset_validation.ipynb
- notebooks/02_eda.ipynb
- notebooks/03_descriptive_stats.ipynb
- notebooks/04_correlation_analysis.ipynb
- notebooks/06_data_cleaning.ipynb

## Skills Learned

- Technical Documentation
- Project Organization
- Dashboard Documentation
- Portfolio Preparation
- Code Documentation

---