-- The Blunder
-- Samantha was tasked with calculating the average monthly salaries for all employees in the EMPLOYEES table, but did not realize her keyboard's 0 key was broken until after completing the calculation. She wants your help finding the difference between her miscalculation (using salaries with any zeroes removed), and the actual average salary.
Write a query calculating the amount of error (i.e.: actual - miscalculated average monthly salaries), and round it up to the next integer.
-- https://www.hackerrank.com/challenges/the-blunder/problem

SELECT CEILING(AVG(Salary) - AVG(CAST(REPLACE(Salary, '0', '') AS decimal)))
FROM EMPLOYEES;