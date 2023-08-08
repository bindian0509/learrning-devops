
-- drop database if exist
drop database if exists UserDB;

-- create db
create database UserDB;
use UserDB;

-- create table Employee with first_name,last_name,email,username,password,regdate
CREATE table Employee(
    first_name varchar(20) not null,
    last_name varchar(20) not null,
    email varchar(50) not null,
    username varchar(20) not null,
    password varchar(20) not null,
    regdate date not null
);

-- insert data into Employee
INSERT into Employee(first_name,last_name,email,username,password,regdate) values('John','Doe','john.doe@i.com','john.doe','john123','2019-01-01');
