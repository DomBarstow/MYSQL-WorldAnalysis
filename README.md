# MYSQL-WorldAnalysis

The databases is a sample database available via mysql:
https://dev.mysql.com/doc/world-setup/en/
Using this database, I will first identify the Primary and Foreign keys:

Identify the primary key in country table.
Code

Identify the primary key in city table.
ID

Identify the primary key in countrylanguage table.
Language

Identify the foreign key in city table.
Country Code

Identify the foreign key in countrylanguage table.
Country Code

Now, I will work through a series of mock requests, to simulate real life queries:

1)	Find the number of cities in the USA.
SELECT count(*) FROM city
WHERE CountryCode = 'USA';

2)	Find out what the population and average life expectancy for people in Argentina is.
SELECT Name, Population, LifeExpectancy FROM country
WHERE Name = 'Argentina';

3)	What country has the highest life expectancy?
SELECT Name, LifeExpectancy FROM country
ORDER BY LifeExpectancy DESC LIMIT 10;

4)	Find 25 cities around the world that start with the letter ‘F’.
SELECT Name FROM city 
WHERE Name LIKE 'f%' LIMIT 25;

5)	Display columns Id, Name, Population from the city table and limit results to first 10 rows only.
SELECT Id, Name, Population 
FROM city 
LIMIT 10;

6)	Find only those cities from city table whose population is larger than 2000000.
SELECT Name, Population FROM city
WHERE Population > 2000000;

7)	Find all city names from city table whose name begins with “Be” prefix.
SELECT Name FROM city
WHERE Name LIKE 'Be%';

8)	Find only those cities from city table whose population is between 500000-1000000.
SELECT Name, Population FROM city
WHERE 500000 < Population AND Population < 1000000;

9)	Find the city with the lowest population in the city table.
SELECT Name, Population FROM city
ORDER BY Population ASC LIMIT 1;

10)	Find the capital of Spain.
SELECT country.Name AS 'Country', city.Name AS 'Capital City'
FROM country 
JOIN city 
ON country.Capital = City.ID 
WHERE country.Name = 'Spain';

11)	List all the languages spoken in the Caribbean region.
SELECT DISTINCT countrylanguage.Language AS 'Caribbean Languages'
FROM country
JOIN
countrylanguage
ON country.code = countrylanguage.countrycode
WHERE Region = 'Caribbean';

12)	Find all the cities from the Europe continent.
SELECT city.Name AS 'European Cities'
FROM city
JOIN country
ON city.CountryCode = country.Code
WHERE country.continent = 'Europe';
