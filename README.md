# Global Satellite Analytics with Space Sustainability

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