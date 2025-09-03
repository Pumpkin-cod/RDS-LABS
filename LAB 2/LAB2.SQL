-- Verify Multi-AZ connection still works
mysql -h [YOUR-MYSQL-ENDPOINT] -P 3306 -u admin -p

-- Check current instance identity
SELECT @@hostname;

-- Confirm access to databases
SHOW DATABASES;

EXIT;