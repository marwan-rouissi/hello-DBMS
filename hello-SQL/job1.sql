"Ajouter à la table world les pays suivants :
name: Afghanistan, continent: Asia, area: 652230, population: 25500100, gdp: 20343000000
name: Albania, continent: Europe, area: 28748, population: 2831741, gdp: 12960000000
name: Algeria, continent: Africa, area: 2381741, population: 37100000, gdp: 188681000000
name: Andorra, continent: Europe, area: 468, population: 78115, gdp: 3712000000
name: Angola, continent: Africa, area: 1246700, population: 20609294, gdp: 100990000000
name: France, continent: Europe, area: 547030, population: 65605000, gdp: 2689000000000
name: Germany, continent: Europe, area: 357021, population: 81770900, gdp: 3859540000000
name: Sweden, continent: Europe, area: 449964, population: 9519374, gdp: 571000000000
name: Norway, continent: Europe, area: 323802, population: 5084190, gdp: 515000000000
name: Denmark, continent: Europe, area: 43098, population: 5574000, gdp: 342000000000"

INSERT INTO world (name, continent, area, population, gdp) VALUES ('Afghanistan', 'Asia', 652230, 25500100, 20343000000);
INSERT INTO world (name, continent, area, population, gdp) VALUES ('Albania', 'Europe', 28748, 2831741, 12960000000);
INSERT INTO world (name, continent, area, population, gdp) VALUES ('Algeria', 'Africa', 2381741, 37100000, 188681000000);
INSERT INTO world (name, continent, area, population, gdp) VALUES ('Andorra', 'Europe', 468, 78115, 3712000000);
INSERT INTO world (name, continent, area, population, gdp) VALUES ('Angola', 'Africa', 1246700, 20609294, 100990000000);
INSERT INTO world (name, continent, area, population, gdp) VALUES ('France', 'Europe', 547030, 65605000, 2689000000000);
INSERT INTO world (name, continent, area, population, gdp) VALUES ('Germany', 'Europe', 357021, 81770900, 3859540000000);
INSERT INTO world (name, continent, area, population, gdp) VALUES ('Sweden', 'Europe', 449964, 9519374, 571000000000);
INSERT INTO world (name, continent, area, population, gdp) VALUES ('Norway', 'Europe', 323802, 5084190, 515000000000);
INSERT INTO world (name, continent, area, population, gdp) VALUES ('Denmark', 'Europe', 43098, 5574000, 342000000000);

"En considérant la table world, écrire une requête permettant d'afficher la population de la France"
SELECT population FROM world WHERE name = 'France';

"1. Modifier la requête pour afficher la population de l'Allemagne"
SELECT population FROM world WHERE name = 'Germany';

"2. Modifier la requête pour afficher la population de la Suède, la Norvège et le Danemark"
SELECT population FROM world WHERE name IN ('Sweden', 'Norway', 'Denmark');

"3. Créer une requête permettant d'afficher les pays dont la superficie est supérieure à 200 000 mais inférieure à 300 000"
SELECT name FROM world WHERE area > 200000 AND area < 300000;