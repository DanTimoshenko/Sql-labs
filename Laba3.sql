SELECT id, name 
FROM cities
WHERE name LIKE '%ськ';



SELECT id, name 
FROM cities
WHERE name LIKE '%донец%';






SELECT population, Concat(name, ' (', region, ')' )
FROM cities 
WHERE population > 100000
ORDER BY name ASC



SELECT id, name, population, ((population*100)/40000000) AS prosent_vid_naselenya
FROM cities
LIMIT 50


SELECT id, name, population, Concat(name, ' - ', ((population*100)/40000000), '%' )
FROM cities 
WHERE ((population*100)/40000000) >= 0.1
ORDER BY ((population*100)/40000000) DESC