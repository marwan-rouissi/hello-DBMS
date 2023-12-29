"1. Quelles sont les valeurs minimales et maximales pour chaque colonne numérique (Year, NA_Sales, EU_Sales, JP_Sales, Other_Sales)"
SELECT MIN(vgs.Year), MAX(vgs.Year), MIN(vgs.NA_Sales), MAX(vgs.NA_Sales), MIN(vgs.EU_Sales), MAX(vgs.EU_Sales), MIN(vgs.JP_Sales), MAX(vgs.JP_Sales), MIN(vgs.Other_Sales), MAX(vgs.Other_Sales) FROM vgs;
"Year min = 1980, Year max = 2020,
NA_Sales min = 0, NA_Sales max = 41.49,
EU_Sales min = 0, EU_Sales max = 29.02,
JP_Sales min = 0, JP_Sales max = 10.22,
Other_Sales min = 0, Other_Sales max = 10.57"

"2. Quelles sont les ventes totales en Amérique du Nord, en Europe, au Japon et dans le reste du monde (Other_Sales) ?"
SELECT SUM(vgs.NA_Sales), SUM(vgs.EU_Sales), SUM(vgs.JP_Sales), SUM(vgs.Other_Sales) FROM vgs;
"NA_Sales = 4327.65, EU_Sales = 2406.69, JP_Sales = 1291.02, Other_Sales = 788.91"

"3. Quelle est la répartition des ventes dans chacune des régions (Amérique du Nord, Europe, Japon, Reste du monde) ?"
SELECT SUM(vgs.NA_Sales) / SUM(vgs.Global_Sales) * 100 as "NA sales %", SUM(vgs.EU_Sales) / SUM(vgs.Global_Sales) * 100 as "EU sales %", SUM(vgs.JP_Sales) / SUM(vgs.Global_Sales) * 100 as "JP sales %", SUM(vgs.Other_Sales) / SUM(vgs.Global_Sales) * 100 as "Others sales %" FROM vgs;
"NA_Sales = 49.2%, EU_Sales = 27.3%, JP_Sales = 14.5%, Other_Sales = 8.9%"

"4. Combien de jeux ont été publiés par année ?"
SELECT vgs.Year, COUNT(vgs.Name) as "published game" FROM vgs GROUP BY vgs.Year;
"1980 = 9,
1981 = 46,
1982 = 36,
1983 = 17,
1984 = 14,
1985 = 14,
1986 = 21,
1987 = 16,
1988 = 15,
1989 = 17,
1990 = 16,
1991 = 41,
1992 = 43,
1993 = 60,
1994 = 121,
1995 = 219,
1996 = 263,
1997 = 289,
1998 = 379,
1999 = 338,
2000 = 349,
2001 = 482,
2002 = 829,
2003 = 775,
2004 = 763,
2005 = 941,
2006 = 1008,
2007 = 1201,
2008 = 1428,
2009 = 1429,
2010 = 1257,
2011 = 1136,
2012 = 652,
2013 = 543,
2014 = 578,
2015 = 608,
2016 = 344,
2017 = 3,
2020 = 1"

"5. Quel est le jeu ayant le plus de ventes totales et sur quelle plateforme a-t-il été le plus vendu ?"
SELECT vgs.Name, vgs.Platform, MAX(vgs.Global_Sales) as "Total sales" FROM vgs GROUP BY vgs.Name, vgs.Platform ORDER BY MAX(vgs.Global_Sales) DESC LIMIT 1;
"Name = Wii Sports, Platform = Wii, Global_Sales = 82.74"

"6. Quelle plateforme a le plus grand nombre de ventes ?"
SELECT vgs.Platform, SUM(vgs.Global_Sales) FROM vgs GROUP BY vgs.Platform ORDER BY SUM(vgs.Global_Sales) DESC LIMIT 1;
"Platform = PS2, Global_Sales = 1255.63"

"7. Quel genre a la plus grande moyenne de ventes ?"
SELECT vgs.Genre, AVG(vgs.Global_Sales) as "Average sales" FROM vgs GROUP BY vgs.Genre ORDER BY AVG(vgs.Global_Sales) DESC LIMIT 1;
"Genre = Platform, Global_Sales = 0.938341"

"8. Comment évolue les ventes au fil des années ?"
SELECT vgs.Year, SUM(vgs.Global_Sales) as "Total sales" FROM vgs GROUP BY vgs.Year ORDER BY vgs.Year;
"1980 = 11.38,
1981 = 35.77,
1982 = 28.86,
1983 = 16.79,
1984 = 50.36,
1985 = 53.94,
1986 = 37.07,
1987 = 21.74,
1988 = 47.22,
1989 = 73.45,
1990 = 49.39,
1991 = 32.23,
1992 = 76.16,
1993 = 45.98,
1994 = 79.17,
1995 = 88.11,
1996 = 199.15,
1997 = 200.98,
1998 = 256.47,
1999 = 251.27,
2000 = 201.56,
2001 = 331.47,
2002 = 395.52,
2003 = 357.85,
2004 = 419.31,
2005 = 459.94,
2006 = 521.04,
2007 = 611.13,
2008 = 678.9,
2009 = 667.3,
2010 = 600.45,
2011 = 515.99,
2012 = 363.54,
2013 = 368.11,
2014 = 337.05,
2015 = 264.44,
2016 = 70.93,
2017 = 0.05,
2020 = 0.29"
"Observation: Les ventes ont augmenté jusqu'en 2008, puis ont diminué jusqu'en 2016, et ont augmenté en 2017 et 2020"

"9. Quelle est la part de marché de chaque éditeur en terme de ventes totales ?"
SELECT vgs.Publisher, SUM(vgs.Global_Sales) as "Total sales" FROM vgs GROUP BY vgs.Publisher ORDER BY SUM(vgs.Global_Sales) DESC LIMIT 10;
"Publisher = Nintendo, Global_Sales = 1786.56,
Publisher = Electronic Arts, Global_Sales = 1110.32,
Publisher = Activision, Global_Sales = 727.46,
Publisher = Sony Computer Entertainment, Global_Sales = 607.5,
Publisher = Ubisoft, Global_Sales = 474.72,
Publisher = Take-Two Interactive, Global_Sales = 399.54,
Publisher = THQ, Global_Sales = 340.77,
Publisher = Konami Digital Entertainment, Global_Sales = 278.56,
Publisher = Sega, Global_Sales = 270.7,
Publisher = Namco Bandai Games, Global_Sales = 253.65"

"10. Qui sont les principaux éditeurs en terme de ventes ?"
SELECT vgs.Publisher, COUNT(vgs.Name) as "Number of games" FROM vgs GROUP BY vgs.Publisher ORDER BY COUNT(vgs.Name) DESC LIMIT 10;
"Publisher = Electronic Arts, Number of games = 1351,
Publisher = Activision, Number of games = 975,
Publisher = Namco Bandai Games, Number of games = 932,
Publisher = Ubisoft, Number of games = 921,
Publisher = Konami Digital Entertainment, Number of games = 832,
Publisher = THQ, Number of games = 715,
Publisher = Nintendo, Number of games = 703,
Publisher = Sony Computer Entertainment, Number of games = 683,
Publisher = Sega, Number of games = 639,
Publisher = Take-Two Interactive, Number of games = 413"

"11. Quels sont les jeux avec les meilleures ventes dans chaque genre de jeu ?"
SELECT vgs.Genre, vgs.Name, MAX(vgs.Global_Sales) as "Total sales" FROM vgs GROUP BY vgs.Genre, vgs.Name ORDER BY MAX(vgs.Global_Sales) DESC LIMIT 10;
"Genre = Sports, Name = Wii Sports, Global_Sales = 82.74,
Genre = Platform, Name = Super Mario Bros., Global_Sales = 40.24,
Genre = Racing, Name = Mario Kart Wii, Global_Sales = 35.82,
Genre = Role-Playing, Name = Pokemon Red/Pokemon Blue, Global_Sales = 31.37,
Genre = Puzzle, Name = Tetris, Global_Sales = 30.26,
Genre = Misc, Name = Wii Play, Global_Sales = 29.02,
Genre = Shooter, Name = Duck Hunt, Global_Sales = 28.31,
Genre = Simulation, Name = Nintendogs, Global_Sales = 24.76,
Genre = Action, Name = Grand Theft Auto V, Global_Sales = 21.4,
Genre = Fighting, Name = Super Smash Bros. Brawl, Global_Sales = 13.04"

"12. Voyez vous une autre problématique à analyser pour ce jeu de données ?"
"Oui, il y a une autre problématique à analyser pour ce jeu de données, c'est de voir les ventes par régions, et de voir les ventes par année pour chaque régions."
SELECT vgs.Year, vgs.NA_Sales, vgs.EU_Sales, vgs.JP_Sales, vgs.Other_Sales FROM vgs GROUP BY vgs.Year, vgs.NA_Sales, vgs.EU_Sales, vgs.JP_Sales, vgs.Other_Sales ORDER BY vgs.Year;
"1980 = 10.59, 0.67, 0, 0.12,
1981 = 33.4, 1.96, 0, 0.32,
1982 = 26.92, 1.65, 0, 0.31,
1983 = 7.76, 0.8, 8.1, 0.14,
1984 = 33.28, 2.1, 14.27, 0.7,
1985 = 33.73, 4.74, 14.56, 0.92,
1986 = 12.5, 2.84, 19.81, 1.93,
1987 = 8.46, 1.41, 11.63, 0.2,
1988 = 23.87, 6.59, 15.76, 0.99,
1989 = 45.15, 8.44, 18.36, 1.5,
1990 = 25.46, 7.63, 14.88, 1.4,
1991 = 12.76, 3.95, 14.78, 0.74,
1992 = 33.87, 11.71, 28.91, 1.65,
1993 = 15.12, 4.65, 25.33, 0.89,
1994 = 79.17, 41.03, 14.88, 7.53,
1995 = 88.11, 46.12, 14.9, 7.53,
1996 = 199.15, 86.76, 57.44, 22.04,
1997 = 200.98, 94.75, 48.32, 22.76,
1998 = 256.47, 128.36, 50.04, 25.33,
1999 = 251.27, 126.06, 52.34, 27.99,
2000 = 201.56, 94.49, 42.77, 22.26,
2001 = 331.47, 173.98, 39.86, 31.47,
2002 = 395.52, 216.19, 41.76, 39.43,
2003 = 357.85, 193.59, 34.2, 26.01,
2004 = 419.31, 222.59, 41.65, 47.29,
2005 = 459.94, 242.61, 54.28, 40.58,
2006 = 521.04, 263.12, 73.73, 54.43,
2007 = 611.13, 312.05, 60.29, 77.6,
2008 = 678.9, 351.44, 60.26, 82.39,
2009 = 667.3, 338.85, 61.89, 74.77,
2010 = 600.45, 304.24, 59.49, 59.9,
2011 = 515.99, 241.06, 53.04, 54.39,
2012 = 363.54, 153.26, 51.74, 35.12,
2013 = 368.11, 154.77, 47.59, 39.82,
2014 = 337.05, 132.27, 41.24, 40.02,
2015 = 264.44, 106.86, 34.74, 30.01,
2016 = 70.93, 22.66, 13.7, 7.75,
2017 = 0.05, 0, 0, 0.01,
2020 = 0.29, 0.27, 0, 0.02"