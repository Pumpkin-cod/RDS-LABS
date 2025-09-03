-- On Read Replica
-- Test read operations
SELECT * FROM labdb.test_table;

-- Attempt a write operation (should fail)
INSERT INTO
    labdb.test_table (id, name)
VALUES (2, 'Replica Write Test');