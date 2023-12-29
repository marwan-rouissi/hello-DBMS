"Créer la table students avec les colonnes suivantes :
student_id : clé primaire
first_name : varchar(50)
last_name : varchar(50)
age : int
grade : text"

CREATE TABLE students (
    student_id SERIAL PRIMARY KEY,
    first_name VARCHAR(50),
    last_name VARCHAR(50),
    age INT,
    grade TEXT
);

"Insérer les données suivantes dans la table students :
first_name: Alice, last_name: Johnson, age: 22, grade: A+
first_name: Bob, last_name: Smith, age: 20, grade: B
first_name: Charlie, last_name: Williams, age: 21, grade: C
first_name: David, last_name: Brown, age: 23, grade: B+
first_name: Eva, last_name: Davis, age: 19, grade: A
first_name: Frank, last_name: Jones, age: 22, grade: C+"

INSERT INTO students (first_name, last_name, age, grade) VALUES ('Alice', 'Johnson', 22, 'A+');
INSERT INTO students (first_name, last_name, age, grade) VALUES ('Bob', 'Smith', 20, 'B');
INSERT INTO students (first_name, last_name, age, grade) VALUES ('Charlie', 'Williams', 21, 'C');
INSERT INTO students (first_name, last_name, age, grade) VALUES ('David', 'Brown', 23, 'B+');
INSERT INTO students (first_name, last_name, age, grade) VALUES ('Eva', 'Davis', 19, 'A');
INSERT INTO students (first_name, last_name, age, grade) VALUES ('Frank', 'Jones', 22, 'C+');

"1. Créer une requête permettant d'afficher toutes les colonnes de la table students"
SELECT * FROM students;

"2. Créer une requête permettant de filter la table students pour afficher uniquement les étudiants agés de strictement plus de 20 ans"
SELECT * FROM students WHERE age > 20;

"3.a. Créer une requête permettant de faire un classement des étudiants selon leur note (grade) par ordre croissant (A+ est la meilleure note)"
SELECT * FROM students
ORDER BY 
  CASE grade
    WHEN 'A+' THEN 1
    WHEN 'A' THEN 2
    WHEN 'B+' THEN 3
    WHEN 'B' THEN 4
    WHEN 'C+' THEN 5
    WHEN 'C' THEN 6
    ELSE 7
  END ASC;

"3.b Créer une requête permettant de faire un classement des étudiants selon leur note (grade) par ordre décroissant (A+ est la meilleure note)"
SELECT * FROM students
ORDER BY 
  CASE grade
    WHEN 'A+' THEN 1
    WHEN 'A' THEN 2
    WHEN 'B+' THEN 3
    WHEN 'B' THEN 4
    WHEN 'C+' THEN 5
    WHEN 'C' THEN 6
    ELSE 7
  END DESC;