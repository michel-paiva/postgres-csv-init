CREATE DATABASE mydb;
\c mydb;
CREATE TABLE users(
    id varchar(255),
    nome varchar(255),
    username varchar(255)
);

COPY users FROM '/etc/users.csv' DELIMITERS ',' CSV;

CREATE INDEX idx_user_id 
ON users(id);

ALTER TABLE users ADD COLUMN priority int;