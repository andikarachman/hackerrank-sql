-- The PADS
-- Generate the following two result sets:
   -- 1. Query an alphabetically ordered list of all names in OCCUPATIONS, immediately followed by the first letter of each profession as a parenthetical (i.e.: enclosed in parentheses). For example: AnActorName(A), ADoctorName(D), AProfessorName(P), and ASingerName(S).
   -- 2. Query the number of occurrences of each occupation in OCCUPATIONS. Sort the occurrences in ascending order, and output them in the following format: 
      
      -- There are a total of [occupation_count] [occupation]s.
   
   -- where [occupation_count] is the number of occurrences of an occupation in OCCUPATIONS and [occupation] is the lowercase occupation name. If more than one Occupation has the same [occupation_count], they should be ordered alphabetically.

-- https://www.hackerrank.com/challenges/the-pads/problem

SELECT Name + '(' + SUBSTRING(Occupation, 1, 1) + ')'
FROM OCCUPATIONS
ORDER BY Name ASC;

SELECT CONCAT('There are a total of ', COUNT(*), ' ', LOWER(Occupation), 's.')
FROM OCCUPATIONS
GROUP BY Occupation
ORDER BY COUNT(*) ASC;