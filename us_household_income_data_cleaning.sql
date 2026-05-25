# US Household Income (Data Cleaning)

SELECT COUNT(id)
FROM us_household_income;

SELECT COUNT(id)
FROM statistics;

ALTER TABLE statistics RENAME COLUMN `ï»¿id` TO `id`;

SELECT *
FROM us_household_income;

# Removing duplicates

SELECT id, COUNT(id)
FROM us_household_income
GROUP BY id
HAVING COUNT(id) > 1;

SELECT *
FROM (
	SELECT row_id,
    id,
	ROW_NUMBER() OVER(PARTITION BY id) AS row_num
	FROM us_household_income
) row_table
WHERE row_num > 1;

DELETE FROM us_household_income
WHERE row_id IN (
	SELECT row_id
	FROM (
		SELECT row_id,
		id,
		ROW_NUMBER() OVER(PARTITION BY id) AS row_num
		FROM us_household_income
	) row_table
	WHERE row_num > 1);
    
    SELECT id, COUNT(id)

FROM statistics
GROUP BY id
HAVING COUNT(id) > 1;

SELECT *
FROM us_household_income;

# Standardizing data

SELECT State_Name, COUNT(State_Name)
FROM us_household_income
GROUP BY State_Name;

UPDATE us_household_income
SET State_Name = 'Georgia'
WHERE State_Name = 'georia';

UPDATE us_household_income
SET State_Name = 'Alabama'
WHERE State_Name = 'alabama';

SELECT DISTINCT State_ab
FROM us_household_income;

SELECT *
FROM us_household_income;

SELECT Type, COUNT(Type)
FROM us_household_income
GROUP BY Type;

SELECT ALand, AWater
FROM us_household_income
WHERE (AWater = 0 OR AWater = '' OR AWater IS NULL)
AND (ALand = 0 OR ALand = '' OR ALand IS NULL);

UPDATE us_household_income
SET Type = 'Borough'
WHERE Type = 'Boroughs';

# Populating missing values

UPDATE us_household_income
SET Place = 'Autaugaville'
WHERE County = 'Autauga County'
AND City = 'Vinemont';

