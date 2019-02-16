-- Weather Observation Station 4
-- Let  be the number of CITY entries in STATION, and let  be the number of distinct CITY names in STATION; query the value of  from STATION. In other words, find the difference between the total number of CITY entries in the table and the number of distinct CITY entries in the table.
-- https://www.hackerrank.com/challenges/weather-observation-station-4/problem

SELECT COUNT(CITY) - COUNT(DISTINCT CITY) AS RESULTS
FROM STATION;