-- Total cases by country
SELECT location, MAX(total_cases) AS total_cases
FROM covid_data
GROUP BY location
ORDER BY total_cases DESC
LIMIT 10;

-- Monthly average new cases per country
SELECT 
    location,
    DATE_FORMAT(date, '%Y-%m') AS month,
    ROUND(AVG(new_cases), 2) AS avg_new_cases
FROM covid_data
GROUP BY location, month
ORDER BY location, month;

-- Top 5 highest death days
SELECT date, location, new_deaths
FROM covid_data
ORDER BY new_deaths DESC
LIMIT 5;

-- Death rate per country
SELECT 
    location,
    MAX(total_deaths) / MAX(total_cases) * 100 AS death_rate_percent
FROM covid_data
WHERE total_cases > 0
GROUP BY location
ORDER BY death_rate_percent DESC;
