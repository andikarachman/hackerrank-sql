-- Contest Leaderboard
-- You did such a great job helping Julia with her last coding contest challenge that she wants you to work on this one, too!
The total score of a hacker is the sum of their maximum scores for all of the challenges. Write a query to print the hacker_id, name, and total score of the hackers ordered by the descending score. If more than one hacker achieved the same total score, then sort the result by ascending hacker_id. Exclude all hackers with a total score of  from your result.
-- https://www.hackerrank.com/challenges/contest-leaderboard/problem

SELECT temp1.hacker_id, temp1.name, SUM(temp1.score) AS total_score
FROM
   (SELECT Hackers.hacker_id, Hackers.name, Submissions.challenge_id, MAX(score) AS score
    FROM Hackers INNER JOIN Submissions ON Hackers.hacker_id = Submissions.hacker_id
    GROUP BY Hackers.name, Hackers.hacker_id, Submissions.challenge_id) AS temp1
WHERE temp1.hacker_id NOT IN
   (SELECT Hackers.hacker_id
    FROM Hackers INNER JOIN Submissions ON Hackers.hacker_id = Submissions.hacker_id
    GROUP BY Hackers.hacker_id
    HAVING SUM(Submissions.score) = 0)
GROUP BY temp1.hacker_id, temp1.name
ORDER BY total_score DESC, temp1.hacker_id ASC;