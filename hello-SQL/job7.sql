"1.
Sur le schéma on observe relationnelle de la base de données UEFA EURO 2012, on observe 3 entités : game, eteam et goal.
La relation entre ces 3 entités est la suivante
- Une game peut contenir 0..* goal(s).
- Une eteam peut comptabiliser 0..* goal(s).
- Une eteam peut jouer 0..* game(s).


- Un goal , une game et la relation « scored in ».
Le 1..1 en cardinalité sur le haut de la relation signifie qu’un goal se situe dans une et une seule game.
Il ne peut pas y avoir de goal s’il n’y a pas de game. Le goal dépend de la game.

Le 0..* en cardinalité sur le bas de la relation signifie qu'une game peut contenir au minimum 0 goal et au maximum N goal(s).
N étant un nombre entier variable.

- Un goal, une eteam et la relation « scored for ».
Le 1..1 en cardinalité sur la droite de la relation signifie qu'un goal est marqué par une et une seule équipe.
Il ne peut pas y avoir de goal s’il n’y a pas de eteam. Le goal dépend de la eteam.

Le 0..* en cardinalité sur la gauche de la relation signifie qu'une équipe peut comptabiliser au minimum 0 goal et au maximum N goal(s).

- Une game, une eteam et  la relation « plays in ».
Le 1..1 en cardinalité sur la droite de la relation signifie qu'une game est composée par une et une seule même équipe (par game).
Il ne peut pas y avoir de eteam s’il n’y a pas de game. La eteam dépend de la game.

Le 0..* en cardinalité sur la gauche de la relation signifie qu'une équipe peut comptabiliser au minimum 0 game et au maximum N game(s)."


"Création de la base de données UEFA EURO 2012"
CREATE DATABASE IF NOT EXISTS `UEFA EURO 2012`;
USE `UEFA EURO 2012`;
"Création des tables"
CREATE TABLE eteam (id VARCHAR(3) PRIMARY KEY, teamname TEXT, coach TEXT);
CREATE TABLE game (id INTEGER PRIMARY KEY, mdate DATE, stadium TEXT, team1 VARCHAR(3), team2 VARCHAR(3));
CREATE TABLE goal (matchid INTEGER, teamid VARCHAR(3), player TEXT, gtime INTEGER, PRIMARY KEY(matchid, gtime));

"Insertion des données dans la table eteam"
INSERT INTO eteam (id, teamname, coach)
VALUES
('POL', 'Pologne', 'Franciszek Smuda'),
('GRE', 'Grèce', 'Fernando Santos'),
('GER', 'Allemagne', 'Joachim Löw'),
('POR', 'Portugal', 'Paulo Bento');

"Insertion des données dans la table game"
INSERT INTO game (id, mdate, stadium, team1, team2)
VALUES
(1001, '2012-06-08', 'National Stadium, Warsaw', 'POL', 'GRE'),
(1002, '2012-06-09', 'Stadion Miejski (Wroclaw)', 'RUS', 'CZE'),
(1003, '2012-06-09', 'Stadion Miejski (Poznan)', 'GER', 'POR'),
(1004, '2012-06-12', 'National Stadium, Warsaw', 'GRE', 'CZE'),
(1005, '2012-06-12', 'Stadion Miejski (Poznan)', 'POL', 'RUS'),
(1006, '2012-06-16', 'National Stadium, Warsaw', 'CZE', 'POL'),
(1007, '2012-06-16', 'Stadion Miejski (Wroclaw)', 'GRE', 'RUS'),
(1008, '2012-06-17', 'Arena Gdansk', 'POR', 'GER'),
(1009, '2012-06-21', 'Stadion Miejski (Wroclaw)', 'CZE', 'POR'),
(1010, '2012-06-21', 'National Stadium, Warsaw', 'GRE', 'GER'),
(1011, '2012-06-24', 'Donbass Arena, Donetsk', 'ENG', 'ITA'),
(1012, '2012-06-27', 'Donbass Arena, Donetsk', 'POR', 'ESP'),
(1013, '2012-06-28', 'National Stadium, Warsaw', 'GER', 'ITA');


"Insertion des données dans la table goal"
INSERT INTO goal (matchid, teamid, player, gtime)
VALUES
(1001, 'POL', 'Robert Lewandowski', 17),
(1001, 'GRE', 'Dimitris Salpingidis', 51),
(1002, 'GER', 'Mario Gomez', 72),
(1002, 'POR', 'Pepe', 24),
(1003, 'POL', 'Jakub Blaszczykowski', 58),
(1003, 'RUS', 'Alan Dzagoev', 37),
(1004, 'POR', 'Helder Postiga', 64),
(1012, 'GER', 'Mario Gomez', 72);


"2. La requête suivante permet d'afficher le numéro de match et le nom de joueur pour tous les buts marqués par l'Allemagne."
SELECT matchid, player FROM goal WHERE teamid = 'GER';

"Insertion d'un nouveau match"
INSERT INTO game (id, mdate, stadium, team1, team2) VALUES (1012, '2012-06-28', 'National Stadium, Warsaw', 3, 4);

"3. Créer une requête permettant d'afficher les colonnes id, stadium, team1, team2 pour tous le match dont l'id est 1012."
SELECT id, stadium, team1, team2 FROM game WHERE id = 1012;

"4. La requête suivante permet de joindre la table game et la table goal sur la colonne id-matchid afin d'afficher le nom du joueur, le teamid, le stade et le mdate pour chaque but allemand."
SELECT player, teamid, stadium, mdate FROM game JOIN goal ON (id=matchid) WHERE teamid = 'GER';

"5. Créer une requête permettant d'afficher team1, team2 et player pour tous les buts marqués par un joueur nommé Mario."
SELECT team1, team2, player FROM game JOIN goal ON (id=matchid) WHERE player LIKE 'Mario%';

"6. Créer une requête permettant de joindre la table goal et la table eteam sur les clés id - teamid"
SELECT * FROM goal JOIN eteam ON (teamid=id);

"Insertion d'un nouveau but avant les 10 premières minutes du match"
INSERT INTO goal (matchid, teamid, player, gtime) VALUES (1012, 'GER', 'Mario Gomez', 8);

"7. Créer une requête permettant d'afficher player, teamid, coach, gtime pour tous les buts marqués durant les 10 premières minutes des matchs."
SELECT player, teamid, coach, gtime FROM goal JOIN eteam ON (teamid=id) WHERE gtime <= 10;

"8. Créer une requête permettant d'afficher les dates des matchs ainsi que le nom de l'équipe dont 'Fernando Santos' était le coach de l'équipe team1."
SELECT mdate, teamname FROM game JOIN eteam ON (team1=eteam.id) WHERE coach = 'Fernando Santos';

"9. Créer une requête permettant d'afficher la liste des joueurs pour chaque but marqué lors d'un match dont le stade est 'National Stadium, Warsaw'."
SELECT player FROM game JOIN goal ON (id=matchid) WHERE stadium = 'National Stadium, Warsaw';

"10. Créer une requête permettant d'afficher le nombre total de buts marqués pour chaque équipe de la table goal."
SELECT teamid, COUNT(*) AS 'goal(s)' FROM goal GROUP BY teamid;

"11. Créer une requête permettant d'afficher les stades et le nombre de buts marqués dans chacun des stades de la jointure entre la table game et la table goal."
SELECT stadium, COUNT(*) AS 'goal(s)' FROM game JOIN goal ON (id=matchid) GROUP BY stadium;

"Insertion de l'équipe de France"
INSERT INTO eteam (id, teamname, coach) VALUES ('FRA', 'France', 'Didier Deschamps');

"Insertion d'un nouveau match"
INSERT INTO game (id, mdate, stadium, team1, team2) VALUES (1012, '2012-06-28', 'National Stadium, Warsaw', 'FRA', 'ITA');

"Insérer un nouveau but marqué par l'équipe de France"
INSERT INTO goal (matchid, teamid, player, gtime) VALUES (1012, 'FRA', 'Karim Benzema', 72);

"12. Créer une requête permettant d'afficher l'id du match, la date du match et le nombre de buts marqués par l'équipe de France."
SELECT matchid, mdate, COUNT(*) AS 'goal(s)' FROM game JOIN goal ON (id=matchid) WHERE teamid = 'FRA' GROUP BY matchid;