-- Revising Aggregations - The Count Function
-- Query a count of the number of cities in CITY having a Population larger than 100000.
-- https://www.hackerrank.com/challenges/revising-aggregations-the-count-function/problem

SELECT COUNT(NAME)
FROM CITY
WHERE POPULATION > 100000;