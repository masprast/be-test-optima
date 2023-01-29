CREATE DATABASE IF NOT EXISTS 'datadb';
USE 'datadb';

-- ALTER USER 'mu'@'localhost' IDENTIFIED WITH mysql_native_password 'mp';
-- FLUSH PRIVILEGE;

CREATE TABLE IF NOT EXISTS 'DataUser' (
    NIK char(16),
    full_name varchar(255),
    gender enum('male','female'),
    blood_type enum('A','B','AB','O'),
    photo longtext(),
    constraint pk_dataUser (NIK,full_name)
);

INSERT INTO 'DataUser' VALUES (
    '0123456789101112',
    'nama lengkap si A',
    'male',
    'AB',
    ''
);