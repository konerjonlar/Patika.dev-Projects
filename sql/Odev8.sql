CREATE TABLE employee (
	id SERIAL PRIMARY KEY,
	name VARCHAR(50) NOT NULL,
	email VARCHAR(100) NOT NULL,
	birthday DATE
);

UPDATE employee 
SET name = 'Marilyn Monroe'
WHERE id = 4
RETURNING *;


UPDATE employee 
SET birthday = '1933-02-12'
WHERE id = 7
RETURNING *;

UPDATE employee 
SET birthday = '1986-11-16'
WHERE birthday = '1924-03-07'
RETURNING *;

UPDATE employee 
SET birthday = '04-08-1926'
WHERE name LIKE 'Mari%'
RETURNING *;

UPDATE employee 
SET email = 'a@gmail.com'
WHERE id = 5
RETURNING *;



select * from employee

DELETE FROM employee
WHERE name LIKE 'Kat%';

DELETE FROM employee
WHERE email LIKE '%org';

DELETE FROM employee
WHERE id = 17;

DELETE FROM employee
WHERE birthday > '1995-03-26';

DELETE FROM employee
WHERE birthday < '1978-06-01';
