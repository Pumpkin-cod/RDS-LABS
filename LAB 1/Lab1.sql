-- MySQL: Connect and Test
SHOW DATABASES;

USE labdb;

CREATE TABLE test_table (
    id INT PRIMARY KEY,
    name VARCHAR(50)
);

INSERT INTO test_table VALUES (1, 'Test Data');

SELECT * FROM test_table;

-- PostgreSQL Equivalent
\l \c labdb

CREATE TABLE test_table (
    id SERIAL PRIMARY KEY,
    name VARCHAR(50)
);

INSERT INTO test_table (name) VALUES ('Test Data');

SELECT * FROM test_table;

\q