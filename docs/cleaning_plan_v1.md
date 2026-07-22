# Data Cleaning Plan v1

## Dataset
Global Satellite Analytics with Space Sustainability

---

## Missing Values

### object_type
- Missing Values: 2
- Strategy: Replace missing values with "UNKNOWN"
- Reason: Prevent data loss and avoid making assumptions.

### country
- Missing Values: 2
- Strategy: Replace missing values with "UNKNOWN"
- Reason: Original country information is unavailable.

---

## Duplicate Records

- Duplicate NORAD IDs: None
- Strategy: Keep all records.

---

## Data Types

- All data types are correct.
- No conversion required.

---

## Category Harmonisation

- object_type categories are already consistent.
- altitude_category categories are already consistent.
- country codes are preserved as provided in the dataset.
- No harmonisation required.

---

## Invalid Values

- No invalid values found in mean_motion.
- Eccentricity values are within the expected range (0–1).

---

## Cleaning Summary

| Column | Issue | Action |
|---------|-------|--------|
| object_type | 2 Missing Values | Fill with UNKNOWN |
| country | 2 Missing Values | Fill with UNKNOWN |
| Duplicates | None | Keep |
| Data Types | Correct | No Action |
| Categories | Consistent | No Action |

## Keep / Drop / Impute Decisions

| Column | Issue | Decision | Reason |
|--------|-------|----------|--------|
| object_type | 2 Missing Values | Impute | Replace missing values with "UNKNOWN" to preserve all records. |
| country | 2 Missing Values | Impute | Replace missing values with "UNKNOWN" because the original value is unavailable. |
| Duplicate Records | No Duplicates | Keep | No duplicate NORAD IDs were found. |
| Data Types | No Issues | Keep | All columns already have appropriate data types. |
| Categories | Consistent | Keep | No inconsistent category names were identified. |
| Invalid Values | None | Keep | Numerical values are within the expected range. |

## Final Cleaning Decision

The cleaning plan has been finalized. Missing values in `object_type` and `country` will be replaced with `UNKNOWN`. Since no duplicate records, data type issues, category inconsistencies, or invalid values were found, no additional cleaning actions are required.