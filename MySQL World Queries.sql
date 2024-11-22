#Task 1
SELECT count(*) FROM city
WHERE CountryCode = 'USA';

#Task 2
SELECT Name, Population, LifeExpectancy FROM country
WHERE Name = 'Argentina';

#Task 3
SELECT Name, LifeExpectancy FROM country
ORDER BY LifeExpectancy DESC LIMIT 10;

#Task 4
SELECT Name FROM city 
WHERE Name LIKE 'f%' LIMIT 25;

#Task 5
SELECT Id, Name, Population 
FROM city 
LIMIT 10;

#Task 6
SELECT Name, Population FROM city
WHERE Population > 2000000;

#Task 7
SELECT Name FROM city
WHERE Name LIKE 'Be%';

#Task 8
SELECT Name, Population FROM city
WHERE 500000 < Population AND Population < 1000000;

#Task 9
SELECT Name, Population FROM city
ORDER BY Population ASC LIMIT 1;

#Challenge 1
SELECT country.Name AS 'Country', city.Name AS 'Capital City'
FROM country 
JOIN city 
ON country.Capital = City.ID 
WHERE country.Name = 'Spain';

#Challenge 2
SELECT DISTINCT countrylanguage.Language AS 'Caribbean Languages'
FROM country
JOIN
countrylanguage
ON country.code = countrylanguage.countrycode
WHERE Region = 'Caribbean';

#Challenge 3
SELECT city.Name AS 'European Cities'
FROM city
JOIN country
ON city.CountryCode = country.Code
WHERE country.continent = 'Europe';

