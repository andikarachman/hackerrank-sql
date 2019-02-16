-- Projects
-- You are given a table, Projects, containing three columns: Task_ID, Start_Date and End_Date. It is guaranteed that the difference between the End_Date and the Start_Date is equal to 1 day for each row in the table. If the End_Date of the tasks are consecutive, then they are part of the same project. Samantha is interested in finding the total number of different projects completed. Write a query to output the start and end dates of projects listed by the number of days it took to complete the project in ascending order. If there is more than one project that have the same number of completion days, then order by the start date of the project.
-- https://www.hackerrank.com/challenges/projects/problem

SELECT d.startdate, DATEADD(day, d.days, d.startdate)
FROM
    (SELECT c.startdate AS startdate, MIN(c.diff) AS days
     FROM
        (SELECT a.Start_Date as startdate, 
                b.End_Date as enddate, 
                DATEDIFF(day, a.Start_Date, b.End_Date) as diff                                                            
         FROM
            (SELECT Start_Date
             FROM Projects
             WHERE Start_Date NOT IN (SELECT End_Date FROM Projects)) AS a, 
            (SELECT End_Date
             FROM Projects
             WHERE End_Date NOT IN (SELECT Start_Date FROM Projects)) AS b
     WHERE Start_Date < End_Date) AS c
     GROUP BY c.startdate) AS d
ORDER BY d.days ASC, d.startdate;