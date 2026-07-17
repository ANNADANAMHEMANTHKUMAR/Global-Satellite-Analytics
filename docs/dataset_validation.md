# Dataset Validation Report

## Project
Global Satellite Analytics with Space Sustainability

---

## Dataset Source

- Source: CelesTrak
- Dataset Type: Government Open Data
- File Format: CSV
- Records: 16,649
- Columns: 19

---

## Validation Performed

### 1. Missing Values

Checked all columns for missing values using Pandas.

Result:
No critical missing values affecting analysis.

---

### 2. Duplicate Records

Checked duplicate NORAD IDs.

Result:
No duplicate satellite IDs found.

---

### 3. Altitude Validation

Validated that altitude values are greater than zero.

Result:
No invalid altitude values found.

---

### 4. Eccentricity Validation

Verified eccentricity values remain between 0 and 1.

Result:
All values are valid.

---

### 5. Mean Motion Validation

Checked that mean motion values are positive.

Result:
No invalid values detected.

---

### 6. Launch Year Validation

Validated estimated launch years.

Result:
All launch years fall within the expected range.

---

### 7. Days in Orbit Validation

Checked for negative values.

Result:
No negative orbit duration found.

---

### 8. Country Validation

Reviewed satellite ownership distribution.

Top countries include:

- US
- PRC
- UK
- CIS
- JPN

Result:
Country values are consistent.

---

### 9. Data Source Validation

All records originate from:

CelesTrak

Result:
Trusted single-source dataset.

---

### 10. Dataset Freshness

Snapshot Date Analysis:

Most Recent Snapshot:
2026-07-13

Result:
Dataset is recent and suitable for analytics.

---

## Conclusion

The dataset passed structural, quality, consistency, and validity checks.

The dataset is suitable for further preprocessing, exploratory data analysis, SQL analysis, statistical analysis, and Power BI dashboard development.