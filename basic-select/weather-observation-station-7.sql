-- Weather Observation Station 7
-- Query the list of CITY names ending with vowels (a, e, i, o, u) from STATION. Your result cannot contain duplicates.
-- https://www.hackerrank.com/challenges/weather-observation-station-7/problem

SELECT DISTINCT CITY
FROM STATION
WHERE CITY LIKE '%a' OR
      CITY LIKE '%i' OR
      CITY LIKE '%u' OR
      CITY LIKE '%e' OR
      CITY LIKE '%o';