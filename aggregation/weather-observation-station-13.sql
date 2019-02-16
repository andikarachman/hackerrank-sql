-- Weather Observation Station 13
-- Query the sum of Northern Latitudes (LAT_N) from STATION having values greater than 38.788  and less than 137.2345. Truncate your answer to 4 decimal places.
-- https://www.hackerrank.com/challenges/weather-observation-station-13/problem

SELECT ROUND(SUM(LAT_N), 4)
FROM STATION
WHERE LAT_N > 38.788 AND LAT_N < 137.2345;