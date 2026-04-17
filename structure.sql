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
create table classes (
    id int AUTO_INCREMENT PRIMARY KEY,
    name varchar(100) not null,
    classroom_number varchar(20)

);
CREATE Table courses (
    id int AUTO_INCREMENT PRIMARY KEY,
    title varchar(150) not NULL,
    description TEXT,
    total_hours int
    
);
CREATE TABLE students (
    id INT PRIMARY KEY,
    dateofbirth DATE,
    student_number VARCHAR(50) UNIQUE,
    class_id INT,
    
    FOREIGN KEY (id) REFERENCES users(id),
    FOREIGN KEY (class_id) REFERENCES classes(id)
);
CREATE TABLE enrollments (
    id INT AUTO_INCREMENT PRIMARY KEY,
    student_id INT,
    course_id INT,
    enrolled_at DATE,
    status VARCHAR(20),

    FOREIGN KEY (student_id) REFERENCES students(id),
    FOREIGN KEY (course_id) REFERENCES courses(id),

    UNIQUE (student_id, course_id)
);
INSERT INTO roles (label) VALUES
('Admin'),
('Prof'),
('Student');
INSERT INTO users (first_name, last_name, email, password, role_id) VALUES
('Othman','Hamadellah','othman@gmail.com','hashed123',1),
('Karim','Bennani','karim@gmail.com','hashed123',2),
('Sara','Alami','sara@gmail.com','hashed123',2),
('Yassine','Tazi','yassine@gmail.com','hashed123',3),
('Imane','Lahlou','imane@gmail.com','hashed123',3);
INSERT INTO classes (name, classroom_number) VALUES
('Développeur Web 2026','A1'),
('Data Science 2026','B1'),
('Réseaux 2026','C1');
INSERT INTO students (id, dateofbirth, student_number, class_id) VALUES
(4,'2002-05-10','ST001',1),
(5,'2001-03-15','ST002',2);
INSERT INTO enrollments (enrolled_at, status, student_id, course_id) VALUES
('2026-01-10','Actif',1,1),
('2026-01-10','Actif',1,2),
('2026-01-11','Actif',2,3),
('2026-01-11','Actif',2,4);