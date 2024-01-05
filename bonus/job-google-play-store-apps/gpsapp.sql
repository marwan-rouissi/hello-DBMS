"1. Quelle est la note moyenne de toutes les applications du Google Play Store ?"
SELECT ROUND(AVG(Rating), 2) AS "Note moyenne" FROM gps;
" note moyenne = 4.19 "

"2. Quelle est la note la plus élevée et la note la plus basse du jeu de données ?"
SELECT MAX(Rating) AS "Note la plus élevée", MIN(Rating) AS "Note la plus basse" FROM gps;
" note la plus élevée = 19.0 "
" note la plus basse = 1.0 "

"3. Quelle est la proportion d'applications gratuites et d'applications payantes ?"
SELECT COUNT(*) AS "Nombre d'applications gratuites" FROM gps WHERE Type = "Free";
" nombre d'applications gratuites = 10039 "
SELECT COUNT(*) AS "Nombre d'applications payantes" FROM gps WHERE Type = "Paid";
" nombre d'applications payantes = 800 "

"4. Quelle est la moyenne du nombre de commentaires des applications gratuites et des applications payantes ?"
SELECT ROUND(AVG(CAST(Reviews AS float))) AS "Moyenne du nombre de commentaires des applications gratuites" FROM gps WHERE Type = "Free";
" moyenne du nombre de commentaires des applications gratuites =  478661 "
SELECT ROUND(AVG(CAST(Reviews AS float))) AS "Moyenne du nombre de commentaires des applications gratuites" FROM gps WHERE Type = "Paid";
" moyenne du nombre de commentaires des applications payantes =  11673 "

"5. Combien d'applications y a t-il dans chaque catégorie ?"
SELECT Category, COUNT(*) AS "Nombre d'applications" FROM gps GROUP BY Category;
" Art & Design =  65 "
" Auto & Vehicles =  85 "
" Beauty =  53 "
" Books & Reference =  231 "
" Business =  460 "
" Comics =  60 "
" Communication =  387 "
" Dating =  234 "
" ...... "

"6. Quelle est la note moyenne de chaque catégorie d'application ?"
SELECT Category, ROUND(AVG(Rating), 2) AS "Note moyenne" FROM gps GROUP BY Category;
" Art & Design =  4.35 "
" Auto & Vehicles =  4.19 "
" Beauty =  4.28 "
" Books & Reference =  4.35 "
" Business =  4.12 "
" Comics =  4.16 "
" Communication =  4.16 "
" Dating =  3.97 "
" ...... "

"7. Quelle catégorie d’applications a la moyenne la plus élevée d'avis ?"
SELECT Category, ROUND(AVG(CAST(Reviews AS float))) AS "Moyenne du nombre de commentaires" FROM gps GROUP BY Category ORDER BY "Moyenne du nombre de commentaires" DESC LIMIT 1;
" Communication =  2107138 "


"8. Quelle est la taille moyenne des applications dans chaque catégorie ?"
"Conversion de la colonne Size en float"
SELECT Category, ROUND(AVG(CAST(REPLACE(Size, "M", "") AS float))) AS "Taille moyenne" FROM gps GROUP BY Category;
" Art & Design =  12.0 "
" Auto & Vehicles =  21.0 "
" Beauty =  12.0 "
" Books & Reference =  13.0 "
" Business =  14.0 "
" Comics =  12.0 "
" Communication =  11.0 "
" Dating =  14.0 "
" ...... "

"9. Semble t-il y a t-il une corrélation entre la taille de l’application et le nombre d’installation ?"
SELECT Category, ROUND(AVG(CAST(REPLACE(Size, "M", "") AS float))) AS "Taille moyenne", Install FROM gps GROUP BY Category;
" Art & Design =  12.0 "
" Auto & Vehicles =  21.0 "
" Beauty =  12.0 "
" Books & Reference =  13.0 "
" Business =  14.0 "
" Comics =  12.0 "
" Communication =  11.0 "
" Dating =  14.0 "
" ...... "
" On peut voir que les applications les plus installées sont les plus petites."

"10. Combien d'application existent pour chaque évaluation du contenu ?"
SELECT `Content Rating`, COUNT(*) AS "Nombre d'applications" FROM gps GROUP BY `Content Rating`;
" Everyone =  8714 "
" Teen =  1208 "
" Everyone 10+ =  414 "
" Mature 17+ =  499 "
" Adults only 18+ =  3 "
" Unrated =  2 "

"11. Quelle est la note moyenne pour chaque évaluation du contenu ?"
SELECT `Content Rating`, ROUND(AVG(Rating), 2) AS "Note moyenne" FROM gps GROUP BY `Content Rating`;
" Everyone =  4.19 "
" Teen =  4.23 "
" Everyone 10+ =  4.25 "
" Mature 17+ =  4.1 "
" Adults only 18+ =  4.3 "
" Unrated =  4.1 "

"12. Quelle évaluation du contenu a le plus d'application ?"
SELECT `Content Rating`, SUM(CAST(REPLACE(REPLACE(Installs, "+", ""), ",", "") AS float)) AS "Nombre d'installations"
FROM gps
GROUP BY `Content Rating`
ORDER BY "Nombre d'installations"
DESC LIMIT 1;
" Everyone =  114156659621 "

"13. Quels sont les genres les plus courants dans le jeu de données ?"
SELECT Genres, COUNT(*) AS "Nombre d'applications" FROM gps GROUP BY Genres ORDER BY `Nombre d'applications` DESC LIMIT 5;
" Tools =  842 "
" Entertainment =  623 "
" Education =  549 "
" Medical =  463 "
" Business =  460 "

"14. Combien d'applications appartiennent à plusieurs genres ?"
SELECT COUNT(*) AS "Nombre d'applications" FROM gps WHERE Genres LIKE "%;%";
" nombre d'applications =  498 "

"15. Semble t-il y a t-il une corrélation entre le fait d'avoir plusieurs genres et des notes plus élevées ?"
SELECT Genres, ROUND(AVG(Rating), 2) AS "Note moyenne" FROM gps WHERE Genres LIKE "%;%" GROUP BY Genres;
" Art & Design;Creativity =  4.4 "
" Art & Design;Pretend Play =  4.1 "
" Art & Design;Action & Adventure =  4.1 "
" Auto & Vehicles;Creativity =  4.1 "
" Beauty;Pretend Play =  4.1 "
" Books & Reference;Creativity =  4.4 "
" Books & Reference;Education =  4.4 "
" Business;Creativity =  4.3 "
" ...... "
"On peut voir que les notes sont plus élevées pour les applications qui ont plusieurs genres."

"16. Quel est le prix moyen des applications payantes dans chaque catégorie ?"
SELECT Category, ROUND(AVG(CAST(REPLACE(Price, "$", "") AS float)), 2) AS "Prix moyen" FROM gps WHERE Type = "Paid" GROUP BY Category;
" Art & Design =  1.99 "
" Auto & Vehicles =  4.49 "
" Books & Reference =  4.28 "
" Business =  13.23 "
" Comunication =  3.08 "
" Dating =  4.49 "
" Education =  4.49 "
" Entertainment =  3.99 "
" ...... "

"17. Combien d'applications gratuites existent dans chaque catégorie ?"
SELECT Category, COUNT(*) AS "Nombre d'applications gratuites" FROM gps WHERE Type = "Free" GROUP BY Category;
" Art & Design =  62 "
" Auto & Vehicles =  82 "
" Beauty =  53 "
" Books & Reference =  203 "
" Business =  446 "
" Comics =  60 "
" Communication =  360 "
" Dating =  227 "
" ...... "

"18. Quelles sont les 5 meilleures applications avec le plus grand nombre d'installations ?"
"conversion de la colonne Installs de text en int"
SELECT App, CAST(REPLACE(REPLACE(Installs, "+", ""), ",", "") AS SIGNED) AS `Nombre d'installations`
FROM gps
ORDER BY `Nombre d'installations` DESC
LIMIT 5;
" Google News =  1000000000 "
" Google Chrome: Fast & Secure =  1000000000 "
" Subway Surfers =  1000000000 "
" Subway Surfers =  1000000000 "
" Google Play Games =  1000000000 "

"19. Quelles sont les 5 meilleures applications gratuites avec les notes les plus élevées ?"
SELECT App, Rating FROM gps WHERE Type = "Free" ORDER BY Rating DESC LIMIT 5;
" FK Dedinje BGD =  5.0 "
" Mad Dash Fo' Cash =  5.0 "
" Florida Beach Wallpapers HD =  5.0 "
" Dr. ES PV Calculator =  5.0 "
" Safe Santa Fe =  5.0 "

"20. Semble t-il y avoir une corrélation entre la taille d'une application et sa note ?"
SELECT ROUND(AVG(CAST(REPLACE(Size, "M", "") AS float))) AS "Taille moyenne", ROUND(AVG(Rating), 2) AS "Note moyenne" FROM gps;
" Taille moyenne =  20.0 "
" Note moyenne =  4.19 "
"On peut voir que les applications les plus petites ont les meilleures notes."

"21. Les applications plus petites sont-elles plus susceptibles d'être gratuites ?"
SELECT ROUND(AVG(CAST(REPLACE(Size, "M", "") AS float))) AS "Taille moyenne", Type FROM gps GROUP BY Type;
" Taille moyenne =  20.0 "
" Type =  Free "
"On peut voir que les applications les plus petites sont gratuites."

"22. Semble t-il y a t-il une corrélation entre le prix d'une application et sa note ?"
SELECT ROUND(AVG(CAST(REPLACE(Price, "$", "") AS float)), 2) AS "Prix moyen", ROUND(AVG(Rating), 2) AS "Note moyenne" FROM gps;
" Prix moyen =  1.09 "
" Note moyenne =  4.19 "
"On peut voir que les applications les moins chères ont les meilleures notes."