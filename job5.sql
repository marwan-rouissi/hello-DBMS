"Inserer les données suivantes dans la table world :
name: Russia, continent: Europe, area: 17075400, population: 146934000, gdp: 2057"
INSERT INTO world (name, continent, area, population, gdp) VALUES ('Russia', 'Europe', 17075400, 146934000, 2057);

"1. Créer une requête permettant d'afficher les pays dont la population est supérieure à celle de 'Russia'."
SELECT name FROM world WHERE population > (SELECT population FROM world WHERE name = 'Russia');

"Inserer les données suivantes dans la table world :
name: Italy, continent: Europe, area: 301230, population: 60770000, gdp: 2228850000000"
INSERT INTO world (name, continent, area, population, gdp) VALUES ('Italy', 'Europe', 301230, 60770000, 2228850000000);

"2. Créer une requête permettant d'afficher les pays d'Europe dont le PIB par habitant est supérieur à celui de l'Italie."
SELECT name FROM world WHERE continent = 'Europe' AND gdp/population > (SELECT gdp/population FROM world WHERE name = 'Italy');

"Inserer les données suivantes dans la table world :
name: United Kingdom, continent: Europe, area: 242900, population: 62348447, gdp: 2848000000000"
INSERT INTO world (name, continent, area, population, gdp) VALUES ('United Kingdom', 'Europe', 242900, 62348447, 2848000000000);

"3. Créer une requête permettant d'afficher les pays d'Europe dont la population est supérieure à celle du Royaume-Uni mais inférieure à celle de 'Germany'."
SELECT name FROM world WHERE continent = 'Europe' AND population > (SELECT population FROM world WHERE name = 'United Kingdom') AND population < (SELECT population FROM world WHERE name = 'Germany');

"Inserer les données suivantes dans la table world :
name: Austria, continent: Europe, area: 83879, population: 8499759, gdp: 436000000000"
INSERT INTO world (name, continent, area, population, gdp) VALUES ('Austria', 'Europe', 83879, 8499759, 436000000000);

"4. Créer une requête permettant d'afficer le nom et la population de chaque pays d'Europe, en pourcentage de la population de l'Allemagne."
SELECT name, concat(ROUND((population/(SELECT population FROM world WHERE name = 'Germany'))*100), '%') AS 'pourcentage' FROM world WHERE continent = 'Europe';

"5. Créer une requête permettant de trouver le plus grand pays de chaque continent, en indiquant son continent, son nom et sa superficie."
SELECT continent, name, area FROM world WHERE area IN (SELECT MAX(area) FROM world GROUP BY continent);

"Inserer les données suivantes dans la table world :
name: China, continent: Asia, area: 9596960, population: 1403500365, gdp: 10380300000000
name: India, continent: Asia, area: 3287263, population: 1324171354, gdp: 2051220000000
name: United States, continent: North America, area: 9631418, population: 323947000, gdp: 18569100000000
name: Indonesia, continent: Asia, area: 1904569, population: 261115456, gdp: 932259000000"
INSERT INTO world (name, continent, area, population, gdp) VALUES ('China', 'Asia', 9596960, 1403500365, 10380300000000);
INSERT INTO world (name, continent, area, population, gdp) VALUES ('India', 'Asia', 3287263, 1324171354, 2051220000000);
INSERT INTO world (name, continent, area, population, gdp) VALUES ('United States', 'North America', 9631418, 323947000, 18569100000000);
INSERT INTO world (name, continent, area, population, gdp) VALUES ('Indonesia', 'Asia', 1904569, 261115456, 932259000000);

"Insérer les données suivantes dans la table world :
name: Brazil, continent: South America, area: 8515767, population: 207652865, gdp: 1798000000000
name: Australia, continent: Oceania, area: 7692024, population: 24127159, gdp: 1209000000000"
INSERT INTO world (name, continent, area, population, gdp) VALUES ('Brazil', 'South America', 8515767, 207652865, 1798000000000);
INSERT INTO world (name, continent, area, population, gdp) VALUES ('Australia', 'Oceania', 7692024, 24127159, 1209000000000);

"6. Créer une requête permettant de trouver les continents où la somme de la population de tous les pays est inférieure ou égale à 25 000 000."
SELECT continent FROM world GROUP BY continent HAVING SUM(population) <= 25000000;