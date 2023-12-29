"Créer la table nobel avec les colonnes suivantes :
yr : int
subject : varchar(50)
winner : varchar(50)"

CREATE TABLE nobel (
    yr INT,
    subject VARCHAR(50),
    winner VARCHAR(50)
);

"Insérer les données suivantes dans la table nobel :
yr: 1921, subject: Physics, winner: Albert Einstein
yr: 1921, subject: Chemistry, winner: Frederick Soddy
yr: 1960, subject: Chemistry, winner: Willard F. Libby
yr: 1960, subject: Literature, winner: Saint-John Perse
yr: 1960, subject: Medicine, winner: Sir Frank Macfarlane Burnet
yr: 1960, subject: Medicine, winner: Peter Madawar
yr: 1967, subject: Chemistry, winner: Manfred Eigen
yr: 1967, subject: Literature, winner: Miguel Angel Asturias
yr: 1986, subject: Chemistry, winner: Dudley R. Herschbach
yr: 1986, subject: Chemistry, winner: Yuan T. Lee
yr: 1986, subject: Chemistry, winner: John C. Polanyi
yr: 1986, subject: Literature, winner: Wole Soyinka
yr: 1986, subject: Peace, winner: Elie Wiesel
yr: 1986, subject: Physics, winner: Ernst Ruska
yr: 1986, subject: Physics, winner: Gerd Binnig
yr: 1986, subject: Physics, winner: Heinrich Rohrer
yr: 1990, subject: Chemistry, winner: Elias James Corey
yr: 1990, subject: Literature, winner: Octavio Paz
yr: 1990, subject: Peace, winner: Mikhail Gorbachev
yr: 1990, subject: Physics, winner: Jerome I. Friedman
yr: 1990, subject: Physics, winner: Henry W. Kendall
yr: 1990, subject: Physics, winner: Richard E. Taylor
yr: 1994, subject: Chemistry, winner: George A. Olah
yr: 1994, subject: Literature, winner: Kenzaburo Oe
yr: 1994, subject: Peace, winner: Yasser Arafat
yr: 1994, subject: Peace, winner: Shimon Peres
yr: 1994, subject: Peace, winner: Yitzhak Rabin
yr: 1994, subject: Physics, winner: Bertram N. Brockhouse
yr: 1994, subject: Physics, winner: Clifford G. Shull
yr: 1998, subject: Chemistry, winner: Walter Kohn
yr: 1998, subject: Chemistry, winner: John A. Pople
yr: 1998, subject: Literature, winner: Jose Saramago
yr: 1998, subject: Peace, winner: John Hume
yr: 1998, subject: Peace, winner: David Trimble
yr: 1998, subject: Physics, winner: Robert B. Laughlin
yr: 1998, subject: Physics, winner: Horst L. Stormer
yr: 1998, subject: Physics, winner: Daniel C. Tsui
yr: 2002, subject: Chemistry, winner: John B. Fenn
yr: 2002, subject: Chemistry, winner: Koichi Tanaka
yr: 2002, subject: Chemistry, winner: Kurt Wuthrich
yr: 2002, subject: Literature, winner: Imre Kertesz
yr: 2002, subject: Peace, winner: Jimmy Carter
yr: 2002, subject: Physics, winner: Raymond Davis Jr.
yr: 2002, subject: Physics, winner: Masatoshi Koshiba
yr: 2002, subject: Physics, winner: Riccardo Giacconi
yr: 2006, subject: Chemistry, winner: Roger D. Kornberg
yr: 2006, subject: Literature, winner: Orhan Pamuk
yr: 2006, subject: Peace, winner: Muhammad Yunus
yr: 2006, subject: Peace, winner: Grameen Bank
yr: 2006, subject: Physics, winner: John C. Mather
yr: 2006, subject: Physics, winner: George F. Smoot
yr: 2010, subject: Chemistry, winner: Richard F. Heck
yr: 2010, subject: Chemistry, winner: Ei-ichi Negishi
yr: 2010, subject: Chemistry, winner: Akira Suzuki
yr: 2010, subject: Literature, winner: Mario Vargas Llosa
yr: 2010, subject: Peace, winner: Liu Xiaobo
yr: 2010, subject: Physics, winner: Andre Geim"

INSERT INTO nobel (yr, subject, winner)
VALUES (1921, 'Physics', 'Albert Einstein'),
       (1921, 'Chemistry', 'Frederick Soddy'),
       (1960, 'Chemistry', 'Willard F. Libby'),
       (1960, 'Literature', 'Saint-John Perse'),
       (1960, 'Medicine', 'Sir Frank Macfarlane Burnet'),
       (1960, 'Medicine', 'Peter Madawar'),
       (1967, 'Chemistry', 'Manfred Eigen'),
       (1967, 'Literature', 'Miguel Angel Asturias'),
       (1986, 'Chemistry', 'Dudley R. Herschbach'),
       (1986, 'Chemistry', 'Yuan T. Lee'),
       (1986, 'Chemistry', 'John C. Polanyi'),
       (1986, 'Literature', 'Wole Soyinka'),
       (1986, 'Peace', 'Elie Wiesel'),
       (1986, 'Physics', 'Ernst Ruska'),
       (1986, 'Physics', 'Gerd Binnig'),
       (1986, 'Physics', 'Heinrich Rohrer'),
       (1990, 'Chemistry', 'Elias James Corey'),
       (1990, 'Literature', 'Octavio Paz'),
       (1990, 'Peace', 'Mikhail Gorbachev'),
       (1990, 'Physics', 'Jerome I. Friedman'),
       (1990, 'Physics', 'Henry W. Kendall'),
       (1990, 'Physics', 'Richard E. Taylor'),
       (1994, 'Chemistry', 'George A. Olah'),
       (1994, 'Literature', 'Kenzaburo Oe'),
       (1994, 'Peace', 'Yasser Arafat'),
       (1994, 'Peace', 'Shimon Peres'),
       (1994, 'Peace', 'Yitzhak Rabin'),
       (1994, 'Physics', 'Bertram N. Brockhouse'),
       (1994, 'Physics', 'Clifford G. Shull'),
       (1998, 'Chemistry', 'Walter Kohn'),
       (1998, 'Chemistry', 'John A. Pople'),
       (1998, 'Literature', 'Jose Saramago'),
       (1998, 'Peace', 'John Hume'),
       (1998, 'Peace', 'David Trimble'),
       (1998, 'Physics', 'Robert B. Laughlin'),
       (1998, 'Physics', 'Horst L. Stormer'),
       (1998, 'Physics', 'Daniel C. Tsui'),
       (2002, 'Chemistry', 'John B. Fenn'),
       (2002, 'Chemistry', 'Koichi Tanaka'),
       (2002, 'Chemistry', 'Kurt Wuthrich'),
       (2002, 'Literature', 'Imre Kertesz'),
       (2002, 'Peace', 'Jimmy Carter'),
       (2002, 'Physics', 'Raymond Davis Jr.'),
       (2002, 'Physics', 'Masatoshi Koshiba'),
       (2002, 'Physics', 'Riccardo Giacconi'),
       (2006, 'Chemistry', 'Roger D. Kornberg'),
       (2006, 'Literature', 'Orhan Pamuk'),
       (2006, 'Peace', 'Muhammad Yunus'),
       (2006, 'Peace', 'Grameen Bank'),
       (2006, 'Physics', 'John C. Mather'),
       (2006, 'Physics', 'George F. Smoot'),
       (2010, 'Chemistry', 'Richard F. Heck'),
       (2010, 'Chemistry', 'Ei-ichi Negishi'),
       (2010, 'Chemistry', 'Akira Suzuki'),
       (2010, 'Literature', 'Mario Vargas Llosa'),
       (2010, 'Peace', 'Liu Xiaobo'),
       (2010, 'Physics', 'Andre Geim');

"1. Créer une requête permettant d’afficher les prix nobels de 1986."
SELECT * FROM nobel WHERE yr = 1986;

"2. Créer une requête permettant d’afficher les prix nobels de littérature de 1967."
SELECT * FROM nobel WHERE yr = 1967 AND subject = 'Literature';

"3. Créer une requête permettant d’afficher l'année et le sujet des prix nobels d'Albert Einstein."
SELECT yr, subject FROM nobel WHERE winner = 'Albert Einstein';

"4. Créer une requête permettant d’afficher les détails (année, sujet, lauréat) des prix lauréats de Literature de 1980 à 1989 inclus."
SELECT * FROM nobel WHERE subject = 'Literature' AND yr BETWEEN 1980 AND 1989;

"5. Créer une requête permettant d’afficher les détails des lauréats du prix de Mathématiques."
SELECT * FROM nobel WHERE subject = 'Mathematics';
"Il n'y a pas de prix nobel de mathématiques. Il y a un prix Abel qui est considéré comme le prix nobel de mathématiques. Il a été créé en 2003."