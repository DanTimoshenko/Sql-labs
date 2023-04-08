SELECT id, name, UPPER(name) AS name_upscape
FROM cities
ORDER BY name
LIMIT 5

SELECT id, name, LENGTH(name) AS name_length
FROM cities
HAVING name_length != 8 AND  name_length != 9 AND name_length != 10;


SELECT  SUM(population) AS Sum
FROM cities
WHERE region ='C' OR region='S'



SELECT  AVG(population) AS AVG_of_population
FROM cities
WHERE region ='W' 



SELECT COUNT(name) AS count_of_name
FROM cities
WHERE region ='E' 

