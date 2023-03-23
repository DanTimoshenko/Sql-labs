SELECT id, name, population
FROM cities
ORDER BY population DESC
LIMIT 10 OFFSET 10


SELECT id, name
FROM cities
ORDER BY name DESC
LIMIT 30



SELECT id,name, region, population
FROM cities
ORDER BY region ASC, population DESC



SELECT DISTINCT id, region
FROM cities
LIMIT 5



SELECT DISTINCT region
FROM cities


SELECT id, region, name
FROM cities
ORDER BY region DESC, name DESC

