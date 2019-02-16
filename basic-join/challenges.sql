-- Challenges
-- Julia asked her students to create some coding challenges. Write a query to print the hacker_id, name, and the total number of challenges created by each student. Sort your results by the total number of challenges in descending order. If more than one student created the same number of challenges, then sort the result by hacker_id. If more than one student created the same number of challenges and the count is less than the maximum number of challenges created, then exclude those students from the result.
-- https://www.hackerrank.com/challenges/challenges/problem

SELECT Hackers.hacker_id AS hacker_id, Hackers.name AS name, 
       COUNT(Challenges.challenge_id) AS no_challenge
FROM Hackers INNER JOIN Challenges ON Hackers.hacker_id = Challenges.hacker_id
GROUP BY Hackers.hacker_id, Hackers.name
HAVING COUNT(Challenges.challenge_id) =
    (SELECT MAX(no_challenge)
     FROM (SELECT Hackers.hacker_id AS hacker_id, Hackers.name AS name, 
           COUNT(Challenges.challenge_id) as no_challenge
           FROM Hackers INNER JOIN Challenges ON Hackers.hacker_id = Challenges.hacker_id
           GROUP BY Hackers.hacker_id, Hackers.name) AS temp1)
     OR 
     COUNT(Challenges.challenge_id) IN
    (SELECT no_challenge
     FROM (SELECT Hackers.hacker_id AS hacker_id, Hackers.name AS name, 
           COUNT(Challenges.challenge_id) as no_challenge
           FROM Hackers INNER JOIN Challenges ON Hackers.hacker_id = Challenges.hacker_id
           GROUP BY Hackers.hacker_id, Hackers.name) AS temp2
     GROUP BY no_challenge
     HAVING COUNT(no_challenge) = 1)
ORDER BY no_challenge DESC, hacker_id; 