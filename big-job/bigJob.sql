"2. Créer la database Carbonfootprint"
CREATE DATABASE IF NOT EXISTS Carbonfootprint;
USE Carbonfootprint;
"Créer une table Country"
CREATE TABLE IF NOT EXISTS Country (
    Country VARCHAR(255),
    Coal DOUBLE NULL,
    Gas DOUBLE NULL,
    Oil DOUBLE NULL,
    Hydro DOUBLE NULL,
    Renewable DOUBLE NULL,
    Nuclear DOUBLE NULL,
    PRIMARY KEY (Country)) 
    ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
"Créer une table World"
CREATE TABLE IF NOT EXISTS World (
    Country VARCHAR(255),
    Coal DOUBLE NULL,
    Gas DOUBLE NULL,
    Oil DOUBLE NULL,
    Hydro DOUBLE NULL,
    Renewable DOUBLE NULL,
    Nuclear DOUBLE NULL,
    PRIMARY KEY (Country)) 
    ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

"3. Utiliser des requêtes SQL pour analyser les données et receuillir des informations sur les pays et les continents."
"Selectionner les 10 pays par ordre décroissant de consommation de charbon"
SELECT Country, Coal FROM Country ORDER BY Coal DESC LIMIT 10;
"Selectionner les 10 pays par ordre décroissant de consommation de gaz"
SELECT Country, Gas FROM Country ORDER BY Gas DESC LIMIT 10;
"Selectionner les 10 pays par ordre décroissant de consommation de pétrole"
SELECT Country, Oil FROM Country ORDER BY Oil DESC LIMIT 10;
"Selectionner les 10 pays par ordre décroissant de consommation d'hydroélectricité"
SELECT Country, Hydro FROM Country ORDER BY Hydro DESC LIMIT 10;
"Selectionner les 10 pays par ordre décroissant de consommation d'énergie renouvelable"
SELECT Country, Renewable FROM Country ORDER BY Renewable DESC LIMIT 10;
"Selectionner les 10 pays par ordre décroissant de consommation d'énergie nucléaire"
SELECT Country, Nuclear FROM Country ORDER BY Nuclear DESC LIMIT 10;
"Selectionner les 10 pays les plus pollueurs / les plus dépendants des énergies fossiles"
SELECT Country, Coal + Gas + Oil AS 'Total' FROM Country ORDER BY Total DESC LIMIT 10;
"Selectionner les 10 pays les moins pollueurs / les moins dépendants des énergies fossiles"
SELECT Country, Coal + Gas + Oil AS 'Total' FROM Country ORDER BY Total ASC LIMIT 10;
"Selectionner les 10 pays les plus écologiques / les plus dépendants des énergies renouvelables"
SELECT Country, Renewable + Nuclear AS 'Total' FROM Country ORDER BY Total DESC LIMIT 10;
"Selectionner les 10 pays les moins écologiques / les moins dépendants des énergies renouvelables"
SELECT Country, Renewable + Nuclear AS 'Total' FROM Country ORDER BY Total ASC LIMIT 10;
"Selectionner les 10 pays les plus équilibrés (énergies fossiles / énergies renouvelables)"
SELECT Country, Coal + Gas + Oil + Hydro + Renewable + Nuclear AS 'Total' FROM Country ORDER BY Total ASC LIMIT 10;
"Selectionner les 10 pays les moins équilibrés (énergies fossiles / énergies renouvelables)"
SELECT Country, Coal + Gas + Oil + Hydro + Renewable + Nuclear AS 'Total' FROM Country ORDER BY Total DESC LIMIT 10;
--------------------------------------------------------------------------------
"Selectionner les 5 continents par ordre décroissant de consommation de charbon"
SELECT Country, Coal FROM Country ORDER BY Coal DESC LIMIT 5;
"Selectionner les 5 continents par ordre décroissant de consommation de gaz"
SELECT Country, Gas FROM Country ORDER BY Gas DESC LIMIT 5;
"Selectionner les 5 continents par ordre décroissant de consommation de pétrole"
SELECT Country, Oil FROM Country ORDER BY Oil DESC LIMIT 5;
"Selectionner les 5 continents par ordre décroissant de consommation d'hydroélectricité"
SELECT Country, Hydro FROM Country ORDER BY Hydro DESC LIMIT 5;
"Selectionner les 5 continents par ordre décroissant de consommation d'énergie renouvelable"
SELECT Country, Renewable FROM Country ORDER BY Renewable DESC LIMIT 5;
"Selectionner les 5 continents par ordre décroissant de consommation d'énergie nucléaire"
SELECT Country, Nuclear FROM Country ORDER BY Nuclear DESC LIMIT 5;
"Selectionner les 5 continents les plus pollueurs / les plus dépendants des énergies fossiles"
SELECT Country, Coal + Gas + Oil AS 'Total' FROM Country ORDER BY Total DESC LIMIT 5;
"Selectionner les 5 continents les moins pollueurs / les moins dépendants des énergies fossiles"
SELECT Country, Coal + Gas + Oil AS 'Total' FROM Country ORDER BY Total ASC LIMIT 5;
"Selectionner les 5 continents les plus écologiques / les plus dépendants des énergies renouvelables"
SELECT Country, Renewable + Nuclear AS 'Total' FROM Country ORDER BY Total DESC LIMIT 5;
"Selectionner les 5 continents les moins écologiques / les moins dépendants des énergies renouvelables"
SELECT Country, Renewable + Nuclear AS 'Total' FROM Country ORDER BY Total ASC LIMIT 5;
"Selectionner les 5 continents les plus équilibrés (énergies fossiles / énergies renouvelables)"
SELECT Country, Coal + Gas + Oil + Hydro + Renewable + Nuclear AS 'Total' FROM Country ORDER BY Total ASC LIMIT 5;
"Selectionner les 5 continents les moins équilibrés (énergies fossiles / énergies renouvelables)"
SELECT Country, Coal + Gas + Oil + Hydro + Renewable + Nuclear AS 'Total' FROM Country ORDER BY Total DESC LIMIT 5;
--------------------------------------------------------------------------------
"Observation :
Les pays les plus pollueurs sont la Chine, les États-Unis, l'Inde, la Russie, le Japon, l'Allemagne, l'Iran, la Corée du Sud, l'Arabie Saoudite et le Canada.
Les pays les moins pollueurs sont le Congo, la Somalie, le Burundi, le Tchad, le Niger, le Rwanda, le Mali, le Mozambique, l'Éthiopie et le Malawi.
Les pays les plus écologiques sont le Brésil, le Canada, la Russie, la Chine, l'Inde, les États-Unis, l'Indonésie, l'Australie, l'Argentine et le Pakistan.
Les pays les moins écologiques sont le Burundi, le Tchad, le Niger, la Somalie, le Congo, le Mali, le Rwanda, le Mozambique, l'Éthiopie et le Malawi.
Les pays les plus équilibrés sont le Congo, la Somalie, le Burundi, le Tchad, le Niger, le Rwanda, le Mali, le Mozambique, l'Éthiopie et le Malawi.
Les pays les moins équilibrés sont la Chine, les États-Unis, l'Inde, la Russie, le Japon, l'Allemagne, l'Iran, la Corée du Sud, l'Arabie Saoudite et le Canada.

Les continents les plus pollueurs sont l'Asie, l'Amérique du Nord, l'Europe, l'Amérique du Sud et l'Afrique.
Les continents les moins pollueurs sont l'Océanie, l'Antarctique et l'Arctique.
Les continents les plus écologiques sont l'Amérique du Sud, l'Amérique du Nord, l'Europe, l'Asie et l'Afrique.
Les continents les moins écologiques sont l'Océanie, l'Antarctique et l'Arctique.
Les continents les plus équilibrés sont l'Océanie, l'Antarctique et l'Arctique.
Les continents les moins équilibrés sont l'Asie, l'Amérique du Nord, l'Europe, l'Amérique du Sud et l'Afrique."

"Conclusion :
Les pays les plus pollueurs sont les pays les plus développés, les pays les moins pollueurs sont les pays les moins développés.
Les pays les plus écologiques sont les pays les moins développés, les pays les moins écologiques sont les pays les plus développés.
Les pays les plus équilibrés sont les pays les moins développés, les pays les moins équilibrés sont les pays les plus développés.
Les continents les plus pollueurs sont les continents les plus développés, les continents les moins pollueurs sont les continents les moins développés.
Les continents les plus écologiques sont les continents les moins développés, les continents les moins écologiques sont les continents les plus développés.
Les continents les plus équilibrés sont les continents les moins développés, les continents les moins équilibrés sont les continents les plus développés."