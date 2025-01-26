
CREATE USER 'auth_user'@'localhost' IDENTIFIED BY 'Aauth123';


CREATE DATABASE auth;


GRANT ALL PRIVILEGES ON auth.* TO 'auth_user'@'localhost';


USE auth;


CREATE TABLE user (
    id INT NOT NULL AUTO_INCREMENT PRIMARY KEY,
    email VARCHAR(255) NOT NULL UNIQUE, -- Ensure email uniqueness
    password VARCHAR(255) NOT NULL,     -- Store hashed passwords in production
);


INSERT INTO user (email, password) VALUES ('mohak2409@gmail.com', 'Admin123');
