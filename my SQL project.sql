CREATE schema cars;
use cars;

-- Read Data--
SELECT * FROM car_dekho;

-- Total Cars: To get a count of total record--
SELECT COUNT(*) FROM car_dekho;

-- How many cars available in 2023?--
SELECT COUNT(*) FROM car_dekho WHERE year=2023;

-- How many cars available in 2020,2021,2022?--
SELECT COUNT(*) FROM car_dekho WHERE year in (2020,2021,2022) GROUP BY year;

#Print the total of all cars by year
SELECT year, count(*) FROM car_dekho GROUP BY year;

#how many disel cars are available 
SELECT year, COUNT(*) FROM car_dekho WHERE fuel ="Disel" GROUP BY year;

#how many Petrol cars are available 
SELECT year, COUNT(*) FROM car_dekho WHERE fuel ="Petrol" GROUP BY year;

#how many CNG cars are available
SELECT year, COUNT(*) FROM car_dekho WHERE fuel ="CNG" GROUP BY year;

#In which year had more than 100 cars available?
SELECT year, COUNT(*) FROM car_dekho GROUP BY year having count(*)>100;

#All cars count between 2015 and 2023
SELECT COUNT(*) FROM car_dekho WHERE year BETWEEN 2015 and 2023;

#All cars details between 2015 and 2023
SELECT* FROM car_dekho WHERE year BETWEEN 2015 and 2023;