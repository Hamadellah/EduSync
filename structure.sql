create DATABASE school_db;
use school_db;
CREATE TABLE roles (
    id INT AUTO_INCREMENT PRIMARY KEY,
    label VARCHAR(50) NOT NULL
);
CREATE TABLE users(
    id INT AUTO_INCREMENT PRIMARY KEY,
    first_name VARCHAR(55),
    last_name VARCHAR(55),
    email VARCHAR(150) UNIQUE NOT NULL,
    password VARCHAR(155) NOT NULL,
    role_id INT ,
    FOREIGN KEY (role_id) REFERENCES roles(id)
);