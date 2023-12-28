"1. Créer une requête permettant d'afficher la population totale du monde."
SELECT SUM(population) AS 'population mondiale' FROM world;

"2. Créer une requête permettant d'afficher la population totale de chaque continent."
SELECT continent, SUM(population) AS 'population continentale' FROM world GROUP BY continent;

"3. Créer une requête permettant d'afficher le PIB total du continent de chacun des continents."
SELECT continent, SUM(gdp) AS 'PIB total' FROM world GROUP BY continent;

"4. Créer une requête permettant d'afficher le PIB total du continent Africain."
SELECT SUM(gdp) AS 'PIB total du continent Africain' FROM world WHERE continent = 'Africa';

"5. Créer une requête permettant d'afficher le nombre de pays ayant une superficie supérieure ou égale à 1000000 m2."
SELECT COUNT(name) AS 'nombre de pays ayant une superficie supérieure ou égale à 1000000 m2' FROM world WHERE area >= 1000000;

"Inserer les données suivantes dans la table world:
name: 'Estonia', continent: 'Europe', area: 45227, population: 1331057, gdp: 27400
name: 'Latvia', continent: 'Europe', area: 64589, population: 1934379, gdp: 30500
name: 'Lithuania', continent: 'Europe', area: 65300, population: 2944459, gdp: 35000"
INSERT INTO world (name, continent, area, population, gdp) VALUES ('Estonia', 'Europe', 45227, 1331057, 27400);
INSERT INTO world (name, continent, area, population, gdp) VALUES ('Latvia', 'Europe', 64589, 1934379, 30500);
INSERT INTO world (name, continent, area, population, gdp) VALUES ('Lithuania', 'Europe', 65300, 2944459, 35000);

"6. Créer une requête permettant d'afficher la population des pays suivants: Estonia, Latvia, Lithuania."
SELECT SUM(population) AS 'population des pays suivants: Estonia, Latvia, Lithuania' FROM world WHERE name IN ('Estonia', 'Latvia', 'Lithuania');

"7. Créer une requête permettant d'afficher le nombre de pays de chaque continent."
SELECT continent, COUNT(name) AS 'nombre de pays' FROM world GROUP BY continent;

"8. Créer une requête permettant d'afficher les continents ayant une population totale d'au moins 100 millions d'habitants."
SELECT continent, SUM(population) AS 'population totale' FROM world GROUP BY continent HAVING SUM(population) >= 100000000;