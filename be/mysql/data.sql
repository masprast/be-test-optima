CREATE DATABASE IF NOT EXISTS 'mysqlDB';
USE 'mysqlDB';

CREATE TABLE IF NOT EXISTS 'DaftarUser' (
    NIK char(16),
    full_name varchar(255),
    gender enum('male','female'),
    blood_type enum(A,B,AB,O),
    foto text()
    constraint key_user primary key (NIK,full_name)
);

INSERT INTO DaftarUser VALUES ('0123456789101112','User Pertama','male',O,'');