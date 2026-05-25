# SQL_US_Household_Income
### This project focuses on cleaning and exploring US household income data using MySQL. The goal of the project was to practice real-world SQL workflows involving data cleaning, standardization, duplicate handling, and exploratory data analysis (EDA).

[USHouseholdIncome.csv](https://github.com/ayydanny/SQL_US_Household_Income/blob/main/USHouseholdIncome.csv)  
[USHouseholdIncome_Statistics.csv](https://github.com/ayydanny/SQL_US_Household_Income/blob/main/USHouseholdIncome_Statistics.csv)  
[SQL Data Cleaning Script](https://github.com/ayydanny/SQL_US_Household_Income/blob/main/us_household_income_data_cleaning.sql)  
[SQL EDA Script](https://github.com/ayydanny/SQL_US_Household_Income/blob/main/us_household_income_eda.sql)  

### Tool used: SQL
- Data Cleaning
- Exploratory Data Analysis (EDA)
- Window Functions
- Joins
- Aggregate Functions
- Update Operations
- Data Standardization

---

### Key tasks
**1. Data cleaning**  
- Removed duplicate records using `ROW_NUMBER()` and window functions
- Standardized inconsistent state names and categorical values
- Corrected formatting and spelling inconsistencies within the dataset
- Populated missing location values using conditional update operations
- Identified records with missing or invalid land/water area values
- Improved dataset consistency before analysis  

**2. Exploratory data analysis**  
- States with the largest land and water area totals
- Average household income and median income by state
- Income differences across geographic area types
- Cities with the highest average household income
- Income distribution patterns across different regions

---

### Takeaways
- Reinforced structured workflow for cleaning and analyzing datasets in SQL.
- Practiced handling duplicates, missing values, and inconsistent categorical data.
- Improved ability to explore and summarize large datasets with aggregate functions, joins, and window functions.
- Learned how to prepare clean data for further analysis or visualization.

