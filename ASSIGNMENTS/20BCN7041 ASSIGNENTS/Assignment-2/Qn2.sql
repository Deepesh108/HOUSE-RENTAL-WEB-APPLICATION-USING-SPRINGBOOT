CREATE TABLE student (   id INT PRIMARY KEY,   name VARCHAR(50),   email VARCHAR(50) 
); 
 
 
CREATE TABLE status (   id INT PRIMARY KEY,   status_date DATE,   student_id INT, 
  FOREIGN KEY (student_id) REFERENCES student(id) 
); 
INSERT INTO student (id, name, email) 
VALUES (1, 'Eswar', 'eswar@example.com'); 
INSERT INTO student (id, name, email) 
VALUES (2, 'Rohan', 'rohan@example.com'); 
 
INSERT INTO student (id, name, email) 
VALUES (3, 'GodLord', 'srikar@example.com'); 
 
INSERT INTO student (id, name, email) 
VALUES (4, 'siva', 'athma@example.com'); 
 
INSERT INTO student (id, name, email) 
VALUES (5, 'yashwanth', 'yashwanth@example.com'); 
 
INSERT INTO status (id, status_date, student_id) 
VALUES (101, '2023-05-01', 1); 
 
INSERT INTO status (id, status_date, student_id) 
VALUES (102, '2023-05-02', 1); 
 
INSERT INTO status (id, status_date, student_id) 
VALUES (103, '2023-05-03', 2); 
 
INSERT INTO status (id, status_date, student_id) 
VALUES (104, '2023-05-04', 3); 
 
INSERT INTO status (id, status_date, student_id) 
VALUES (105, '2023-05-05', 4); 
 
INSERT INTO status (id, status_date, student_id) 
VALUES (106, '2023-05-10', 4); 
 
INSERT INTO status (id, status_date, student_id) 
VALUES (107, '2023-05-05', 5); 
 
 
select * from student; 
select * from status;  
SELECT customers.name, orders.order_date 
FROM customers 
INNER JOIN orders ON customers.id = orders.customer_id; 
 
