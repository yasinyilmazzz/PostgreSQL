--How to delete table from database
DROP TABLE students;

--How to create a table
CREATE TABLE students(
	
	student_id CHAR(5) PRIMARY KEY,
	student_name VARCHAR,
	email_address VARCHAR NOT NULL,
	student_age NUMERIC(2) CHECK(student_age>0),
	phone_number CHAR(10) UNIQUE
	
)

--How to insert data into a table
INSERT INTO students VALUES('11111', 'Tom Hanks', 'th@gmail.com', 15, '1234567890');
INSERT INTO students VALUES('11112', 'Brad Pitt', 'bp@gmail.com', 22, '2345678901');
INSERT INTO students VALUES('113', 'Tom Hanks', 'th@gmail.com', 12, '3456789012');

--How to insert data into a table for specific fields
INSERT INTO students(student_id, email_address, phone_number) VALUES('11114', 'abc@gmail.com', '4567890123');
INSERT INTO students(email_address, phone_number, student_id) VALUES('xyz@gmail.com', '5678901234', '11115');

--How to update existing data in a table
--EXAMPLE 1: Change 113 student id to 11113
UPDATE students
SET student_id = '11113'
WHERE student_id = '113';

--EXAMPLE 2: Change Tom Hanks to Anthony Quinn
UPDATE students 
SET student_name = 'Anthony Quinn' 
WHERE student_name = 'Tom Hanks';

--EXAMPLE 3: Change bp@gmail.com to null
--Following code gives error because email_address field has NOT NULL Constraint
UPDATE students
SET email_address = null
WHERE email_address = 'bp@gmail.com';

--EXAMPLE 4: Update all students' ages to the maximum age
UPDATE students
SET student_age = (SELECT MAX(student_age) FROM students);

--How to see table 
SELECT * FROM students;

--EXAMPLE 5: Create parents table with the parent_id, parent_name, student_id, parent_address, parent_dob fields
CREATE TABLE parents(

	parent_id CHAR(5) PRIMARY KEY,
	parent_name TEXT,
	student_id CHAR(5),
	parent_address TEXT,
	parent_dob DATE
	
)

SELECT * FROM parents;

--EXAMPLE 6: Insert 4 records into the parents table
INSERT INTO parents VALUES('21111', 'Mark Hanks', '11111', 'Miami, FL', '1994-10-23');
INSERT INTO parents VALUES('21112', 'Angie Pitt', '11112', 'New York, USA', '1987-2-13');
INSERT INTO parents VALUES('21113', 'John Walker', '11113', 'Berlin, Germany', '1975-12-5');
INSERT INTO parents VALUES('21114', 'Mary Star', '11114', 'Istanbul, Turkey', '1975-12-1');

--EXAMPLE 7: Cahnge all date of births to the minimum date of birth
UPDATE parents
SET parent_dob = (SELECT MIN(parent_dob) FROM parents);

CREATE TABLE pupils(
	
	student_id CHAR(5) PRIMARY KEY,
	pupil_name VARCHAR,
	email_address VARCHAR NOT NULL,
	pupil_age NUMERIC(2) CHECK(pupil_age>0),
	phone_number CHAR(10) UNIQUE,
	CONSTRAINT student_id_fk FOREIGN KEY(student_id) REFERENCES parents(parent_id)
)