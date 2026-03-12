CREATE DATABASE jobs_mart;

SHOW DATABASES;

CREATE DATABASE IF NOT EXISTS jobs_mart;

DROP DATABASE jobs_mart;

DROP DATABASE IF EXISTS jobs_mart;

USE jobs_mart;

SELECT*
FROM information_schema.schemata;

CREATE SCHEMA jobs_mart.staging;
CREATE SCHEMA staging;
CREATE SCHEMA IF NOT EXISTS staging;

DROP SCHEMA staging;

--create table
CREATE TABLE preferred_roles(
    role_id Integer,
    role_name VARCHAR
);

SELECT *
FROM information_schema.tables
WHERE table_catalog = 'jobs_mart';

CREATE SCHEMA IF NOT EXISTS staging;
CREATE TABLE staging.preferred_roles(
    role_id Integer PRIMARY KEY,
    role_name VARCHAR
);

DROP TABLE if EXISTS preferred_roles;

--insert into

INSERT INTO staging.preferred_roles (role_id, role_name)
VALUES 
    (1, 'Data Engineer'),
    (2, 'Senior Data Engineer'),
    (3, 'Software Engineer');;

SELECT *
FROM staging.preferred_roles;

-----alter table
ALTER TABLE staging.preferred_roles
ADD COLUMN preferred_roles BOOLEAN;

SELECT *
FROM staging.preferred_roles;

ALTER TABLE staging.preferred_roles
DROP COLUMN preferred_roles;

--update table
UPDATE staging.preferred_roles
SET preferred_role = TRUE
WHERE role_id = 1 OR role_id = 2;

UPDATE staging.preferred_roles
SET preferred_role = FALSE
WHERE role_id = 3;

-- need to check what roles exist
SELECT *
FROM information_schema.columns
WHERE table_name = 'preferred_roles';

SELECT column_name
FROM information_schema.columns
WHERE table_name = 'preferred_roles'
AND table_schema = 'staging';

--creating the role then update table
ALTER TABLE staging.preferred_roles
ADD COLUMN preferred_role BOOLEAN;

--then
SELECT *
FROM staging.preferred_roles;

--alter table command
ALTER TABLE staging.preferred_roles
RENAME TO priority_roles;

SELECT *
FROM staging.priority_roles;

ALTER TABLE staging.priority_roles
RENAME COLUMN preferred_role TO priority_lvl;

ALTER TABLE staging.priority_roles
ALTER COLUMN priority_lvl TYPE INTEGER;

UPDATE staging.priority_roles
SET priority_lvl = 3
WHERE role_id = 3;