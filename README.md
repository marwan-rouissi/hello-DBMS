# hello-DBMS

Ce projet a pour objectif de faire le parallèle entre stockage de données (la Big Data) et impact environemmental.   

En effet, selon des estimations recensées par Statista, le volume de données numériques créées ou répliquées à l'échelle mondiale a été multiplié par 30 au cours de la dernière décennie, passant de 2 zettaoctets en 2010 à 64 zettaoctets l'année dernière.   
Mais cette quantité apparaît peu élevée en comparaison avec ce qui est attendu dans les prochaines années.   
D’après ces prévisions, le volume de données générées dans le monde devrait dépasser 180 zettaoctets à l'horizon 2025, soit une croissance annuelle moyenne de près de 40% sur cinq ans.

## Contenu du projet:
- Dans le ReadMe:
  - Une Veille scientifique sur les éléments composant les sciences de la donnée et donnée de manière plus vaste.
-  hello-SQL : un ensemble de 8 jobs visant à s'exercer sur SQL.
- big-job (application Flask): un mini projet visant à créer un outil interactif pour estimer et réduire l'empreinte carbone liée à la production d'électricité.
- bonus : 2 jobs bonus (+ de SQL).

## Veille scientifique

### A. 
Une donnée est une information brute ou un élément d'information qui peut être utilisé pour effectuer des calculs, prendre des décisions ou l'analyser.
Elle peut être stockée et traitée par un système informatique, il existe différents types de données, notamment:
- Les données numériques: données qui représentent des nombres ou des quantités. Elle peuvent être utilisées dans des calculs mathématiques ou statistiques.
- Les données textuelles: données qui représentent du texte, comme des mots, des phrases ou des paragraphes. Elles peuvent être utilisées dans le traitement du langage naturel ou l'analyse de texte.
- Les données temporelles: données qui représentent des informations liées au temps, comme des dates, des heures ou des durées. Elles peuvent être utilisées dans la planification, la modélisation temporelle ou l'analyse de séries chronologiques.
- Les données spatiales: données qui représentent des informations liées à l'espace, comme des coordonnées géographiques ou des cartes. Elles peuvent être utilisées dans la cartographie, la géolocalisation ou l'analyse géospatiale.
- Les données binaires: données qui représentent des informations sous forme binaire, c'est-à-dire sous forme de 0 et de 1. Elles peuvent être utilisées dans le stockage et le traitement de données informatiques?

### B.
Les critères de mesure de la qualité des données incluent:
l'exactitude: Il s'agit de la conformité des données aux valeurs réelles ou attendues. Des données inexactes peuvent fausser les résultats et les analyses.
la fiabilité: Absence de doublons ou de contradictions dans les valeurs
la pertinence: ?
l'exaustivité:
la complétude: Cela mesure si toutes les données nécessaires sont présentes. Des données incomplètes peuvent entraîner des lacunes dans l'analyse ou la prise de décision. 
la cohérence: Il s'agit de la conformité des données entre elles. Des données incohérentes peuvent entraîner des contradictions et des erreurs dans les analyses.
la validité:?
l'intégrité: Cela mesure si les données sont fiables et non altérées. Des données altérées ou corrompues peuvent entraîner des résultats incorrects.
l'actualité: Cela mesure si les données sont à jour et reflètent la réalité actuelle. Des données obsolètes peuvent conduire à des décisions basées sur des informations dépassées.

la précision: Aspect important de la qualité des données. Si les données ne sont pas précises, elles peuvent conduire à des erreurs d'analyse et à des décisions erronées.

### C.
Une data warehouse est une base de données centralisée et organisée qui stocke des données structurées et prêtes à l'analyse.  
Un data lake est un dépôt de données qui stocke de manière brute et non transformée différentes sources de données.  
Une lake house est une approche hybride qui combine les avantages d'un data lake et d'une data warehouse en permettant le stockage de données non structurées dans un data lake tout en proposant des capacités d'analyse et  de requêtage similaires à une data warehouse.

![image](https://github.com/marwan-rouissi/hello-DBMS/assets/115158061/638dce34-90e3-4354-b702-cebce0712ab2)


### D.
Un SGBD est un logiciel qui permet de stocker, organiser et manipuler des données de manière efficace et sécurisée.
Les exemples les plus courants de SGBD sont MySQL, Orcale, Microsoft SQL Server, PostgreSQL et MongoDB.

![image](https://github.com/marwan-rouissi/hello-DBMS/assets/115158061/54c9f3b0-1960-4c14-b167-007a826c1eb7)



### E.
- Une base de données relationnelle est une collection de données organisée en différentes tables interconnectées basées sur basées sur des relations logiques entre elles.
Elle utilise un langage de requête, comme le SQL, pour accéder aux données stockées dans les différentes tables.
- Une base de données non relationnelle, également connue sous le nom de base de données NoSQL, est un type de base de données qui ne suit pas le modèle relationnel traditionnel. 
Au lieu de stocker les données dans des tables avec des relations prédéfinies, les bases de données non relationnelles stockent les données dans un format plus flexible, tel que des donuments, des graphes ou des paires clé-valeur.

### F.
- Une clé primaire, également appelée clé principale, est un attribut ou un ensemble d'attribut qui identifie de manière unique chaque enregistrement dans une table d'une base de données.
Elle garantit l'unicité des valeurs et empêche les doublons.
De plus, une clé primaire ne peut pas contenir de valeurs nulles.
- Une clé étrangère en SQL est une colonne (ou un ensemble colonnes) qui établit une relation entre deux tables dans une base de données.
(Elle est utilisée pour garantir l'intégrité référentielle et assurer la cohérence des données entre les tables.)
Elle fait référence à la clé primaire d'une autre table et permet de créer des liens entre les enregistrements de différentes tables.
Une clé étrangère peut contenir des valeurs nulles, ce qui signifie qu'elle peut ne pas faire référence à un enregistrement existant dans la table parente.


### G.
(Les propriétés ACID (Atomicité, Cohérence, Isolation, Durabilité) sont les propriétés qui garantissent la cohérence des transactions effecctuées dans un SGBD.)
Les propriétés ACID sont un ensemble de caractéristiques que les SGBD doivent respecter pour garantir l'intégrité et la fiabilité des transactions. 
ACID est un acronyme pour Atomicité, Cohérence, Isolation, Durabilité.
Les propriétés ACID signifient que:
- Atomicité: tout ou rien, une modification des données doit être réalisée dans son intégralité ou pas du tout.
- Cohérence: les données doivent toujours être cohérentes entre elles, même en cas d'erreur.
- Isolation: les transactions doivent être isolées les unes des autres.
- Durabilité: les modifications apportées aux données doivent être durable.

### H.
- Merise est une méthode de conception de systèmes d'information qui a été développée en France dans les années 1970.   
Elle se caractérise par une approche structurée et progressive de la modélisation des données, des traitements et des flux d'informations au sein d'une organisation.   
Merise repose sur quelques principes fondamentaux:
	- l'analyse du système existant avant la conception du système futur, principe fondamental pour repérer, qualifier et quantifier, puis conduire le changement dans les organisations
	- la conceptualisation, principe d'abstraction, qui conduit à des modélisation où la résolution de problème donne sa pleine mesure pour l'optimisation des processus dans la perspectives d'alignement du SI.
 
- UML (Unified Modeling Language) est un langage de modélisation graphique utilisé dans le domaine du génie logiciel pour représenter visuellement le design et l'architecture des systèmes logiciels.
Il offre une notation standardisée pour représenter les différents aspects d'un système logiciel, tels que les classes, les objets, les relations, les cas d'utilisation, les diagrammes de séqquence, ...   
Il existe deux types de modèles UML : 
	- UML Analysis pour produire des spécifications fonctionnelles générales ou détaillées
	- UML Design pour développer des solutions informatisées s’appuyant sur des composants logiciels.

La méthode Merise est utile pour la modélisation des systèmes d'information, tandis qu'ULM est essentiel pour la modélisation et la conception des systèmes logiciels, contriuant ainsi à une meilleure compréhension des besoins des utilisateurs et à la réalisation de solutions informatiques efficaces et evolutives.

Notation Merise:
![image](https://github.com/marwan-rouissi/hello-DBMS/assets/115158061/7231eb74-5aa4-4ec9-947a-23cdfe9bb554)

Notation UML:
![image](https://github.com/marwan-rouissi/hello-DBMS/assets/115158061/04519626-366e-4d03-8dbf-949a26a5cd07)


### I.
Le langage SQL (Structured Query Language) est un langage de programmation utilisé pour communiquer avec et gérer les bases de données relationnelles.
Il existe plusieurs commandes principales utilisées pour interagir avec une BD.
En voici quelques-unes des plus couramment utilisées:
- SELECT: commande permettant de récupérer des données à partir d'une ou plusieurs tables.   
`SELECT * FROM table_name;`  
- INSERT: commande utilisée pour insérer de nouvelles lignes de données dans une table.   
`INSERT INTO table_name (colonne1, colonne2) VALUES (valeur1, valeur2);`
- UPDATE: commande permettant de mettre à jour les données existantes dans une table.   
`UPDATE table_name SET colonne = nouvelle_valeur WHERE condition;`
- DELETE : commande utilisée pour supprimer des lignes de données d'une table.   
`DELETE FROM table_name WHERE condition;`
- CREATE: commande permettant de créer une nouvelle table dans la base de données.   
`CREATE TABLE table_name (colonne1 datatype, colonne2 datatype);`
- ALTER: commande utilisée pour modifier la structure d'une table existante.   
`ALTER TABLE table_name ADD colonne datatype;`
- DROP: commande permettant de supprimer une table ou une base de données.   
`DROP TABLE table_name;`
- JOIN: commande utilisée pour combiner des données provenant de plusieurs tables en fonction d'une condition spécifiée.   
`SELECT * FROM table1 JOIN table2 ON table1.colonne = table2.colonne;`

Les jointures possibles:
- INNER JOIN : jointure interne pour retrouver les enregistrements quand la condition est vrai dans les 2 tables. L'une des jointures les plus communes.   
`SELECT *
FROM A
INNER JOIN B ON A.key = B.key`   
![image](https://github.com/marwan-rouissi/hello-DBMS/assets/115158061/bd763c38-28f4-46ce-beda-bac7f5737000)

- CROSS JOIN : jointure croisée permettatn de faire le produit cartésien de 2 tables. Autrement dit, permet de joindre chaque lignes d'une table avec chaque lignes d'une seconde table.   
Attention, le nombre de résultats est en général très élevé.   
`SELECT *
FROM table1
CROSS JOIN table2`
- LEFT JOIN (ou LEFT OUTER JOIN) : jointure externe pour retrouver tous les enregistrements de la table gauche (LEFT = gauche) même si la condition n'est pas vérifié dans l'autre table.   
`SELECT *
FROM A
LEFT JOIN B ON A.key = B.key`   
![image](https://github.com/marwan-rouissi/hello-DBMS/assets/115158061/63e5feae-8d84-4521-a5a3-27fe15cf5c17)

- LEFT JOIN SANS L'INTERSECTION de B   
`SELECT *
FROM A
LEFT JOIN B ON A.key = B.key
WHERE B.key IS NULL`   
![image](https://github.com/marwan-rouissi/hello-DBMS/assets/115158061/2c7470bc-7db5-488d-bf59-0876997e0296)

- RIGHT JOIN (ou RIGHT OUTER JOIN) : jointure externe pour retourner tous les enregistrements de la table de droite (RIGHT = droite) même si la condition n’est pas vérifié dans l’autre table.   
`SELECT *
FROM A
RIGHT JOIN B ON A.key = B.key`   
![image](https://github.com/marwan-rouissi/hello-DBMS/assets/115158061/63116e59-11e0-40e9-88a3-f8ff1963f780)

- RIGHT JOIN SANS L'INTERSECTION de B   
`SELECT *
FROM A
RIGHT JOIN B ON A.key = B.key
WHERE B.key IS NULL`   
![image](https://github.com/marwan-rouissi/hello-DBMS/assets/115158061/35eeedeb-47b1-4480-ab81-b2d3f7aaf715)

- FULL JOIN (ou FULL OUTER JOIN) : jointure externe pour retourner les résultats quand la condition est vrai dans au moins une des 2 tables.   
`SELECT *
FROM A
FULL JOIN B ON A.key = B.key`   
![image](https://github.com/marwan-rouissi/hello-DBMS/assets/115158061/99fd67e4-3fb0-463d-b9e3-f4de7604bd4c)

- FULL JOIN SANS INTERSECTION   
`SELECT *
FROM A
FULL JOIN B ON A.key = B.key
WHERE A.key IS NULL
OR B.key IS NULL`   
![image](https://github.com/marwan-rouissi/hello-DBMS/assets/115158061/73d218e3-54c1-41b8-860a-fd29b342e1db)

- SELF JOIN : permet d’effectuer une jointure d’une table avec elle-même comme si c’était une autre table.   
`SELECT 't1'.'nom_colonne1', 't1'.'nom_colonne2', 't2'.'nom_colonne1', 't2'.'nom_colonne2'
FROM 'table' as 't1'
LEFT OUTER JOIN 'table' as 't2' ON 't2'.'fk_id' = 't1'.'id'`
- NATURAL JOIN : jointure naturelle entre 2 tables s’il y a au moins une colonne qui porte le même nom entre les 2 tables SQL   
`SELECT *
FROM table1
NATURAL JOIN table2`


## Big Job : Calculateur d'Empreinte Carbone
![image](https://github.com/marwan-rouissi/hello-DBMS/assets/115158061/62406f56-c1d1-4b90-bcd6-fd2f3efbc1f6)
### Réalisé avec:
* ![Python](https://a11ybadges.com/badge?logo=python)
* ![Flask](https://a11ybadges.com/badge?logo=flask)
* ![MySQL](https://a11ybadges.com/badge?logo=mysql)

### Prérequis:
* Installez les modules requis:
  ```sh
  pip install -r requirements.txt
  ```

* Assurez vous également de modifier (si nécéssaire) la fonction `connect_db()` du fichier `app.py` afin que celle-ci corresponde bien à la connexion de votre base de données.   
![image](https://github.com/marwan-rouissi/hello-DBMS/assets/115158061/41823639-27ec-4a6f-8f05-4b10ef38b9f5)
* Votre base de données `carbonfootprint` se compose de 2 tables:
  	- Veuillez vous référer au fichier `carbonfootprint.sql` pour en connaître la structure.

  
## Resources :
- [Volume of data/information created, captured, copied, and consumed worldwide from 2010 to 2020, with forecasts from 2021 to 2025](https://www.statista.com/statistics/871513/worldwide-data-created/)
- [Qu'est-ce qu'un système de gestion de base de données](https://www.oracle.com/fr/database/systeme-gestion-base-de-donnees-sgbd-definition/)
- [MySQL - The Basics // Learn SQL in 23 Easy Steps](https://www.youtube.com/watch?v=Cz3WcZLRaWc)
- [SQL – Tout savoir sur le langage de programmation des bases de données](https://datascientest.com/sql-tout-savoir)
- [NoSQL : Tout comprendre sur les bases de données non relationnelles](https://datascientest.com/nosql-tout-savoir)
- [SQL.sh - Apprendre le SQL](https://sql.sh/)
- [Practice SQL](https://www.sql-practice.com/)
- [7 Database Paradigms](https://www.youtube.com/watch?v=W2Z7fbCLSTw)
