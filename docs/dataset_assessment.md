# Dataset Assessment

## Project
Global Satellite Analytics with Space Sustainability

---

## Dataset Overview

- Dataset Name: Global Satellite Analytics with Space Sustainability
- Source: CelesTrak (Government Open Data)
- File: current_catalog.csv
- Format: CSV
- Records: 16,649
- Columns: 19

---

## Source Credibility

The dataset is based on publicly available satellite catalog information obtained from CelesTrak, a widely used and trusted source for satellite orbital data. The data is commonly referenced by researchers, engineers, and the aerospace community.

Assessment: ✅ Trusted and reliable source.

---

## Licensing

The dataset is based on publicly available government/open satellite data and is intended for educational and analytical purposes.

Assessment: ✅ Suitable for academic and portfolio use.

---

## Freshness

The dataset includes a `snapshot_date` column that records when each observation was captured. During validation, the most common snapshot date was recent, indicating that the dataset is up to date for analysis.

Assessment: ✅ Dataset is sufficiently recent for this project.

---

## Data Quality

The dataset was validated using Python and Pandas.

Validation included:

- Missing value inspection
- Duplicate NORAD ID check
- Altitude validation
- Eccentricity validation
- Mean motion validation
- Country value verification
- Data source verification
- Snapshot date inspection

Assessment: ✅ Dataset passed validation checks and is suitable for analysis.

---

## Conclusion

The dataset is credible, properly documented, recent, and suitable for data cleaning, exploratory data analysis, SQL analysis, statistical analysis, and Power BI dashboard development.