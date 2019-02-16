-- Symmetric Pairs
-- You are given a table, Functions, containing two columns: X and Y. Two pairs (X1, Y1) and (X2, Y2) are said to be symmetric pairs if X1 = Y2 and X2 = Y1. Write a query to output all such symmetric pairs in ascending order by the value of X.
-- https://www.hackerrank.com/challenges/symmetric-pairs/problem

SELECT DISTINCT X1, Y1
FROM (SELECT X AS X1, Y AS Y1
      FROM Functions
      ORDER BY X1
      OFFSET 0 ROWS) AS Table1 
      INNER JOIN (SELECT X AS X2, Y AS Y2
                  FROM Functions
                  ORDER BY Y2
                  OFFSET 1 ROWS) AS Table2
      ON Table1.X1 = Table2.Y2 AND Table1.Y1 = Table2.X2 AND Table1.X1 < Table2.X2
      
UNION ALL

SELECT DISTINCT X AS X1, Y AS Y1
FROM Functions
WHERE X = Y
GROUP BY X, Y
HAVING COUNT(*) > 1
            
ORDER BY X1;