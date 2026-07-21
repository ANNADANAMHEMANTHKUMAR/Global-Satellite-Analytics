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