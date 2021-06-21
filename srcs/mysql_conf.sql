CREATE DATABASE wordpress;
CREATE USER 'statooin'@'localhost' IDENTIFIED BY '';
GRANT ALL PRIVILEGES ON wordpress.* TO 'root'@'localhost';
GRANT ALL PRIVILEGES ON wordpress.* TO 'statooin'@'localhost';
FLUSH PRIVILEGES;
UPDATE mysql.user SET plugin = 'mysql_native_password' WHERE user='root';
