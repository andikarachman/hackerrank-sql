-- Top Competitors
-- Julia just finished conducting a coding contest, and she needs your help assembling the leaderboard! Write a query to print the respective hacker_id and name of hackers who achieved full scores for more than one challenge. Order your output in descending order by the total number of challenges in which the hacker earned a full score. If more than one hacker received full scores in same number of challenges, then sort them by ascending hacker_id.
-- https://www.hackerrank.com/challenges/full-score/problem

SELECT H.hacker_id, H.name
FROM Hackers AS H 
    INNER JOIN Submissions AS S
    ON H.hacker_id = S.hacker_id
    INNER JOIN Challenges AS C
    ON S.challenge_id = C.challenge_id
    INNER JOIN Difficulty AS D
    ON C.difficulty_level = D.difficulty_level
WHERE D.score = S.score
GROUP BY H.hacker_id, H.name
HAVING COUNT(*) > 1
ORDER BY COUNT(*) DESC, H.hacker_id ASC;