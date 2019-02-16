-- African Cities
-- Given the CITY and COUNTRY tables, query the names of all cities where the CONTINENT is 'Africa'. Note: CITY.CountryCode and COUNTRY.Code are matching key columns.
-- https://www.hackerrank.com/challenges/african-cities/problem

SELECT CITY.NAME
FROM CITY 
    INNER JOIN COUNTRY 
    ON CITY.COUNTRYCODE = COUNTRY.CODE
WHERE COUNTRY.CONTINENT = 'Africa';