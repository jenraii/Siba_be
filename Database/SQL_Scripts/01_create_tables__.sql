CREATE DATABASE IF NOT EXISTS casedb;
USE casedb;

-- Department / aineryhmä
CREATE TABLE IF NOT EXISTS Department (
    id INT UNSIGNED NOT NULL AUTO_INCREMENT PRIMARY KEY,
    name VARCHAR(255) NOT NULL
);

-- Program / pääaine
CREATE TABLE IF NOT EXISTS Program (
    id INT UNSIGNED NOT NULL AUTO_INCREMENT PRIMARY KEY,
    name VARCHAR(255) NOT NULL,
    department_id INT UNSIGNED,
    CONSTRAINT FOREIGN KEY (department_id) REFERENCES Department(id)
    	ON DELETE NO ACTION
    	ON UPDATE CASCADE
);

-- Requirement / Vaatimus
CREATE TABLE IF NOT EXISTS Requirement (
    id INT UNSIGNED NOT NULL AUTO_INCREMENT PRIMARY KEY,
    name VARCHAR(255) NOT NULL
);

-- Equipment / varuste
CREATE TABLE IF NOT EXISTS Equipment (
    id INT UNSIGNED NOT NULL AUTO_INCREMENT PRIMARY KEY,
    name VARCHAR(255) NOT NULL
);

-- Campus / Kampus
CREATE TABLE IF NOT EXISTS Campus (
    id INT UNSIGNED NOT NULL AUTO_INCREMENT PRIMARY KEY,
    name VARCHAR(255) NOT NULL
);

-- Building / Rakennus
CREATE TABLE IF NOT EXISTS Building (
    id INT UNSIGNED NOT NULL AUTO_INCREMENT PRIMARY KEY,
    name VARCHAR(255) NOT NULL
);

-- Space / Tila
CREATE TABLE IF NOT EXISTS Space (
    id INT UNSIGNED NOT NULL AUTO_INCREMENT PRIMARY KEY,
    name VARCHAR(255) NOT NULL,
    room_size SMALLINT UNSIGNED,
    people_capasity SMALLINT UNSIGNED,
    building_id INT UNSIGNED NOT NULL,
    CONSTRAINT fk_space_building
    	FOREIGN KEY (building_id) REFERENCES Building(id)
    	ON DELETE CASCADE
    	ON UPDATE CASCADE
);


