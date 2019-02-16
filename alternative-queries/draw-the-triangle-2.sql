-- Draw the Triangle 2
-- P(R) represents a pattern drawn by Julia in R rows. The following pattern represents P(5):
   -- * 
   -- * * 
   -- * * * 
   -- * * * * 
   -- * * * * *
-- Write a query to print the pattern P(20).
-- https://www.hackerrank.com/challenges/draw-the-triangle-2/problem

DECLARE @number INT = 1;
WHILE @number <= 20
BEGIN; 
    SELECT REPLICATE('* ', @number);
    SET @number = @number + 1;
END;