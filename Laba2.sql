SELECT name,population
FROM cities 
WHERE population >= 1000000;


SELECT name,population,region
FROM cities 
WHERE region = 'E' OR region = 'W';
ORDER BY population ASC


SELECT name,population,region
FROM cities 
WHERE region IN ( 'S', 'C', 'N') AND population >= 50000;



SELECT id,name,population,region
FROM cities 
WHERE population >= 50000 AND NOT population >=350000 AND region IN ( 'E', 'W', 'N')
ORDER BY name ASC
LIMIT 20




SELECT id,name,population,region
FROM cities 
WHERE NOT region IN ( 'E', 'W')
ORDER BY population DESC
LIMIT 10 OFFSET 10







