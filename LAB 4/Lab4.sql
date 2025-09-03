-- On Cross-Region Replica
-- Verify replication data
SELECT * FROM labdb.test_table;

-- Attempt write (expected to fail)
INSERT INTO
    labdb.test_table (id, name)
VALUES (3, 'Cross-Region Write Test');