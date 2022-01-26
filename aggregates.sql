# Exercises
# - Find the average SurfaceArea of all countries
# - Max Life Expectancy
# - Min GNP
# - SUM of Population from all countries
# - Surface Area Grouped by CODE
# - Count the names with indepedent year not being null
USE world;

SELECT * FROM country;

SELECT AVG(SurfaceArea) FROM country;

SELECT MAX(LifeExpectancy) FROM country;

SELECT MIN(GNP) FROM country;

SELECT SUM(Population) FROM country;

SELECT SurfaceArea FROM country GROUP BY Code;

SELECT * FROM country GROUP BY name COUNT(IndepYear) != NULL; 