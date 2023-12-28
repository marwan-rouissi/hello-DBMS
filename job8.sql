"1. Créer la base de données SomeCompany en ajoutant une condition d'existance de la base de données. "

CREATE DATABASE IF NOT EXISTS SomeCompany;
USE SomeCompany;

"2. Créer la table Employees."
CREATE TABLE IF NOT EXISTS Employees (
    employee_id INT PRIMARY KEY,
    first_name VARCHAR(50),
    last_name VARCHAR(50),
    birthdate DATE,
    position VARCHAR(50),
    department_id INT,
    FOREIGN KEY (department_id) REFERENCES Departments(department_id)
);

"3. Créer la table Departments."
CREATE TABLE IF NOT EXISTS Departments (
    department_id INT PRIMARY KEY,
    department_name VARCHAR(50),
    departement_head INT,
    location VARCHAR(50)
);

"Etant donné que la cardinalité entre les tables Employees et Departments est de 1..1, il faut créer la table Departments avant la table Employees."

"4. Insérer 6 à 9 employés dans la table Employees."
INSERT INTO Employees (employee_id, first_name, last_name, birthdate, position, department_id)
VALUES 
(1, 'John', 'Doe', '1980-01-01', 'CEO', 1),
(2, 'Jane', 'Doe', '1980-01-01', 'CFO', 2),
(3, 'John', 'Smith', '1980-01-01', 'CTO', 3),
(4, 'Jane', 'Smith', '1980-01-01', 'CIO', 4),
(5, 'John', 'Doe', '1980-01-01', 'CFO', 5),
(6, 'Jane', 'Doe', '1980-01-01', 'CIO', 6),
(7, 'John', 'Smith', '1980-01-01', 'CTO', 7),
(8, 'Jane', 'Smith', '1980-01-01', 'CEO', 8),
(9, 'John', 'Doe', '1980-01-01', 'CFO', 9);

"Inserer 9 départements dans la table Departments."
INSERT INTO Departments (department_id, department_name, departement_head, location) 
VALUES 
(1, 'Management', 1, 'Paris'),
(2, 'Finance', 2, 'Paris'),
(3, 'IT', 3, 'Paris'),
(4, 'Marketing', 4, 'Paris'),
(5, 'Sales', 5, 'Paris'),
(6, 'Human Resources', 6, 'Paris'),
(7, 'Logistics', 7, 'Paris'),
(8, 'Production', 8, 'Paris'),
(9, 'Research and Development', 9, 'Paris');

"Toujours du fait de la cardinalité entre les tables Employees et Departments, il faut insérer les départements avant les employés.
Les clés étrangères ne peuvent pas être nulles, il faut donc insérer les départements avant les employés."

"5. Récupérer le nom et le poste de tous les employés."
SELECT last_name, position FROM Employees;

"6. Mettre à jour le poste de l'employé dont l'id est 2."
UPDATE Employees SET position = 'CEO' WHERE employee_id = 2;

"7. Supprimer l'employé dont l'id est 3."
DELETE FROM Employees WHERE employee_id = 3;

"8. Afficher le nom, le département et le bureau de chaque employé."
SELECT e.last_name, d.department_name, d.location FROM Employees e JOIN Departments d ON (e.department_id = d.department_id);

"Inserer les employés suivants dans la table Employees :
employee_id: 10, first_name: 'John', last_name: 'Doe', birthdate: '1980-01-01', position: 'CFO', department_id: 5
employee_id: 11, first_name: 'Jane', last_name: 'Doe', birthdate: '1980-01-01', position: 'CIO', department_id: 6
employee_id: 12, first_name: 'John', last_name: 'Smith', birthdate: '1980-01-01', position: 'CTO', department_id: 3"

INSERT INTO Employees (employee_id, first_name, last_name, birthdate, position, department_id)
VALUES 
(10, 'John', 'Doe', '1980-01-01', 'CFO', 5),
(11, 'Jane', 'Doe', '1980-01-01', 'CIO', 6),
(12, 'John', 'Smith', '1980-01-01', 'CTO', 3);

"9. Afficher, à l'aide dun filtre, les membre de l'équipe IT, puis le management, puis les ressources humaines."
SELECT e.last_name, d.department_name FROM Employees e JOIN Departments d ON (e.department_id = d.department_id) WHERE d.department_name = 'IT';
SELECT e.last_name, d.department_name FROM Employees e JOIN Departments d ON (e.department_id = d.department_id) WHERE d.department_name = 'Management';
SELECT e.last_name, d.department_name FROM Employees e JOIN Departments d ON (e.department_id = d.department_id) WHERE d.department_name = 'Human Resources';

"10. Afficher les départements de SomeCompany dans l'ordre alphabétique, avec les managers respectifs de chaque département."
SELECT d.department_name, concat(e.first_name, " ",e.last_name) as 'manager' FROM Departments d JOIN Employees e ON (d.departement_head = e.employee_id) ORDER BY d.department_name ASC;

"11. Ajouter un nouveau département dans la table Departments. Insérer un nouvel employé dans la table Employees."
INSERT INTO Departments (department_id, department_name, departement_head, location) VALUES (10, 'Communication', 10, 'Paris');
INSERT INTO Employees (employee_id, first_name, last_name, birthdate, position, department_id) VALUES (13, 'Jane', 'Smith', '1980-01-01', 'CIO', 10);

"12. Créer une nouvelle table Projects avec les colonnes suivantes :
project_id : int (clé primaire)
project_name : varchar(50)
start_date : date
end_date : date
department_id : int (clé étrangère)
Créer une relation entre la table Projects et la table Departments."
CREATE TABLE IF NOT EXISTS Projects (
    project_id INT PRIMARY KEY,
    project_name VARCHAR(50),
    start_date DATE,
    end_date DATE,
    department_id INT,
    FOREIGN KEY (department_id) REFERENCES Departments(department_id)
);

"Insérer 20 projets dans la table Projects."
INSERT INTO Projects (project_id, project_name, start_date, end_date, department_id) 
VALUES 
(1, 'Project 1', '2019-01-01', '2019-12-31', 1),
(2, 'Project 2', '2019-01-01', '2019-12-31', 2),
(3, 'Project 3', '2019-01-01', '2019-12-31', 3),
(4, 'Project 4', '2019-01-01', '2019-12-31', 4),
(5, 'Project 5', '2019-01-01', '2019-12-31', 5),
(6, 'Project 6', '2019-01-01', '2019-12-31', 6),
(7, 'Project 7', '2019-01-01', '2019-12-31', 7),
(8, 'Project 8', '2019-01-01', '2019-12-31', 8),
(9, 'Project 9', '2019-01-01', '2019-12-31', 9),
(10, 'Project 10', '2019-01-01', '2019-12-31', 3),
(11, 'Project 11', '2019-01-01', '2019-12-31', 4),
(12, 'Project 12', '2019-01-01', '2019-12-31', 5),
(13, 'Project 13', '2019-01-01', '2019-12-31', 6),
(14, 'Project 14', '2019-01-01', '2019-12-31', 7),
(15, 'Project 15', '2019-01-01', '2019-12-31', 8),
(16, 'Project 16', '2019-01-01', '2019-12-31', 9),
(17, 'Project 17', '2019-01-01', '2019-12-31', 10),
(18, 'Project 18', '2019-01-01', '2019-12-31', 1),
(19, 'Project 19', '2019-01-01', '2019-12-31', 2),
(20, 'Project 20', '2019-01-01', '2019-12-31', 3);

"Analyser la productivité des départements IT et Communication."
SELECT d.department_name, COUNT(p.project_id) AS 'nombre de projets' FROM Departments d JOIN Projects p ON (d.department_id = p.department_id) WHERE d.department_name IN ('IT', 'Communication') GROUP BY d.department_name;