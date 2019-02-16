-- Draw the Triangle 1
-- P(R) represents a pattern drawn by Julia in R rows. The following pattern represents P(5):
   -- * * * * * 
   -- * * * * 
   -- * * * 
   -- * * 
   -- *
-- Write a query to print the pattern P(20).
-- https://www.hackerrank.com/challenges/draw-the-triangle-1/problem

DECLARE @cnt INT = 20; 
WHILE @cnt > 0 
BEGIN SELECT REPLICATE("* ",@cnt); 
SET @cnt = @cnt - 1; 
END;