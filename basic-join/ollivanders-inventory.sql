-- Ollivander's Inventory
-- Harry Potter and his friends are at Ollivander's with Ron, finally replacing Charlie's old broken wand. Hermione decides the best way to choose is by determining the minimum number of gold galleons needed to buy each non-evil wand of high power and age. Write a query to print the id, age, coins_needed, and power of the wands that Ron's interested in, sorted in order of descending power. If more than one wand has same power, sort the result in order of descending age.
-- https://www.hackerrank.com/challenges/harry-potter-and-wands/problem

SELECT Wands.id, min_prices.age, min_prices.coins_needed, min_prices.power
FROM Wands INNER JOIN
                (SELECT Wands.code, MIN(coins_needed) AS coins_needed, Wands.power, 
                 min(Wands_Property.age) AS age
                 FROM Wands INNER JOIN Wands_Property ON Wands.code = Wands_Property.code
                 WHERE Wands_Property.is_evil = 0
                 GROUP BY Wands.code, Wands.power) AS min_prices
           ON Wands.code = min_prices.code
           AND Wands.power = min_prices.power
           AND Wands.coins_needed = min_prices.coins_needed
ORDER BY min_prices.power DESC, min_prices.age DESC;