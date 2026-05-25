#US Household Income Data Exploratory Analysis

SELECT *
FROM us_household_income;

SELECT *
FROM statistics;

SELECT State_Name, SUM(ALand), SUM(AWater)
FROM us_household_income
GROUP BY State_Name
ORDER BY 2 DESC
LIMIT 10;

SELECT i.State_Name, ROUND(AVG(Mean), 1), ROUND(AVG(Median), 1)
FROM us_household_income i
JOIN statistics s
	ON i.id = s.id
WHERE Mean != 0
GROUP BY i.State_Name
ORDER BY 2 DESC
LIMIT 10;

SELECT Type, COUNT(Type), ROUND(AVG(Mean), 1), ROUND(AVG(Median), 1)
FROM us_household_income i
JOIN statistics s
	ON i.id = s.id
WHERE Mean != 0
GROUP BY Type
ORDER BY 3 DESC;

SELECT Type, COUNT(Type), ROUND(AVG(Mean), 1), ROUND(AVG(Median), 1)
FROM us_household_income i
JOIN statistics s
	ON i.id = s.id
WHERE Mean != 0
GROUP BY Type
HAVING COUNT(Type) > 100
ORDER BY 3 DESC;
    
SELECT i.State_Name, City, ROUND(AVG(Mean), 1)
FROM us_household_income i
JOIN statistics s
	ON i.id = s.id
WHERE Mean != 0
GROUP BY i.State_Name, City
ORDER BY 3 DESC;

SELECT i.State_Name, City, ROUND(AVG(Mean), 1)
FROM us_household_income i
JOIN statistics s
	ON i.id = s.id
WHERE Mean != 0 AND i.State_Name = 'Illinois'
GROUP BY i.State_Name, City
ORDER BY 3 DESC;