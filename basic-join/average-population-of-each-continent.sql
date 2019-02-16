-- Average Population of Each Continent
-- Given the CITY and COUNTRY tables, query the names of all the continents (COUNTRY.Continent) and their respective average city populations (CITY.Population) rounded down to the nearest integer. Note: CITY.CountryCode and COUNTRY.Code are matching key columns.
-- https://www.hackerrank.com/challenges/average-population-of-each-continent/problem

SELECT COUNTRY.CONTINENT, AVG(CITY.POPULATION)
FROM CITY 
    INNER JOIN COUNTRY
    ON CITY.COUNTRYCODE = COUNTRY.CODE
GROUP BY COUNTRY.CONTINENT;