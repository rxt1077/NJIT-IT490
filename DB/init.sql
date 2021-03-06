CREATE DATABASE bartender;
\c bartender
CREATE TABLE usersinfo
(
    id SERIAL,
    first_names varchar(50),
    last_name varchar(50) not null,
    email varchar(255) not null unique,
    -- we encrypt passwords using operating system crypt function
    password varchar(30) not null,
    registration_date timestamp(0),
    hash VARCHAR(255) NOT NULL
);
