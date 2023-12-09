CREATE DATABASE IF NOT EXISTS db_dev;

USE db_dev;

-- Create user table
CREATE TABLE IF NOT EXISTS todo (
    id INT AUTO_INCREMENT PRIMARY KEY,
    task VARCHAR(255) NOT NULL,
    description TEXT,
    deadline DATE,
    user_id INT,
    FOREIGN KEY (user_id) REFERENCES user(id)
);

-- Create todo table 
CREATE TABLE IF NOT EXISTS user (
    id INT AUTO_INCREMENT PRIMARY KEY,
    username VARCHAR(50) NOT NULL,
    email VARCHAR(100) NOT NULL,
    created_at TIMESTAMP DEFAULT CURRENT_TIMESTAMP
);