-- Revising Aggregations - Averages
-- Query the average population of all cities in CITY where District is California.
-- https://www.hackerrank.com/challenges/revising-aggregations-the-average-function/problem

SELECT AVG(POPULATION)
FROM CITY
WHERE DISTRICT = 'California';