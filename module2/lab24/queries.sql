REATE DATABASE IF NOT EXISTS recap;
USE recap;
CREATE TABLE IF NOT EXISTS clients(
 id_client INT,
 name VARCHAR(20),
 PRIMARY KEY( id_client)
);
CREATE TABLE IF NOT EXISTS sales(
   po_id VARCHAR(20),
   year YEAR,
   amount float,
   department VARCHAR (20),
   client_id INT,
   PRIMARY KEY( po_id, year),
FOREIGN KEY (client_id) REFERENCES clients(id_client)
);
INSERT INTO clients(id_client, name)
VALUES ('1',	'John Doe'),  ('2',	'John Smith'),  ('3',	'Tom Red');
SELECT * FROM clients;
INSERT INTO sales(po_id, year, amount, department, client_id)
VALUES ('02-Nov', 2020, 3000, 'Paris',1),  ('02-Dec', 2021, 4000, 'Oslo',1),
('04-Dec', 2021, 2000, 'Oslo',3), ('05-Dec', 2021, 1000, 'Milan',3);

SELECT * FROM sales;
# LEFT JOIN
SELECT c.name,  s.amount, s.year, s.department
FROM clients c
LEFT JOIN  sales s
ON s.client_id=c.id_client;
# RIGHT JOIN
SELECT c.name,  s.amount, s.year, s.department
FROM clients c
RIGHT JOIN  sales s
ON s.client_id=c.id_client;
#intersection
SELECT c.name,  s.amount, s.year, s.department
FROM clients c
JOIN  sales s
ON s.client_id=c.id_client;