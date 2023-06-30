CREATE TABLE students (   id INTEGER PRIMARY KEY,   name VARCHAR(30) NOT NULL, 
  gender CHAR(1) NOT NULL 
); 
INSERT INTO students VALUES (1, 'Ryan', 'M'); 
INSERT INTO students VALUES (2, 'Joanna', 'F'); 
-- fetch some values 
UPDATE students 
SET name = 'Eswar' 
WHERE id = 1; 
SELECT * FROM students; 

DELETE FROM students 
WHERE id = 2; 
SELECT * FROM students; 
 
