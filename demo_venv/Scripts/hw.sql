-- Create the db_blog database
CREATE DATABASE IF NOT exists db_blog;

-- Use the db_blog database
USE db_blog;

-- Create the tb_users table
CREATE TABLE IF NOT EXISTS tb_users (
    id INT AUTO_INCREMENT PRIMARY KEY,
    name VARCHAR(255) NOT NULL
);

-- Insert the users
INSERT INTO tb_users (name) VALUES 
('Bob'),
('Alice'),
('Rick'),
('Sandi'),
('Karen'),
('Joe'),
('Harry');

-- Verify the insertion
SELECT * FROM tb_users;