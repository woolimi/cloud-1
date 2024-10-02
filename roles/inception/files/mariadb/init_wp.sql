CREATE USER 'wp_user'@'localhost' IDENTIFIED by 'PW';
CREATE USER 'wp_user'@'%' IDENTIFIED by 'PW';

CREATE DATABASE wordpress DEFAULT CHARACTER SET utf8 COLLATE utf8_unicode_ci;

GRANT ALL ON wordpress.* TO 'wp_user'@'localhost' IDENTIFIED BY 'PW';
GRANT ALL ON wordpress.* TO 'wp_user'@'%' IDENTIFIED BY 'PW';

FLUSH PRIVILEGES;