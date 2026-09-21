CREATE DATABASE IF NOT EXISTS neoform_gym
  CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci;
USE neoform_gym;

CREATE TABLE members (
  id INT UNSIGNED AUTO_INCREMENT PRIMARY KEY,
  full_name VARCHAR(80) NOT NULL,
  phone VARCHAR(20) NOT NULL UNIQUE,
  email VARCHAR(120) NULL UNIQUE,
  goal ENUM('Strength','Weight loss','Muscle gain','Mobility','General fitness') NOT NULL DEFAULT 'General fitness',
  created_at TIMESTAMP NOT NULL DEFAULT CURRENT_TIMESTAMP,
  INDEX idx_members_name (full_name),
  INDEX idx_members_created (created_at)
) ENGINE=InnoDB;

CREATE TABLE admins (
  id INT UNSIGNED AUTO_INCREMENT PRIMARY KEY,
  username VARCHAR(50) NOT NULL UNIQUE,
  password_hash VARCHAR(255) NOT NULL,
  created_at TIMESTAMP NOT NULL DEFAULT CURRENT_TIMESTAMP
) ENGINE=InnoDB;

-- IMPORTANT: never store plaintext admin passwords.
-- Generate a password hash with PHP password_hash() and insert the result:
-- INSERT INTO admins (username, password_hash) VALUES ('admin', '<ARGON2ID_OR_BCRYPT_HASH>');
