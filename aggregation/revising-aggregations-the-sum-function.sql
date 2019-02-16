-- Revising Aggregations - The Sum Function
-- Query the total population of all cities in CITY where District is California.
-- https://www.hackerrank.com/challenges/revising-aggregations-the-count-function/problem

SELECT SUM(POPULATION)
FROM CITY
WHERE DISTRICT = 'California';