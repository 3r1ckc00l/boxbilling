USE boxbilling;
ALTER USER foo@'%' IDENTIFIED BY 'foo';
GRANT ALL ON *.* TO foo@'%';
FLUSH PRIVILEGES;