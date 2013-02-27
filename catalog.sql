-- all catalogs are written to ~/.catho/ and are sqlite3 databases
-- each file corresponds to one sqlite3 databes with the following 
-- format:

-- METADATA table
CREATE TABLE METADATA(key TEXT, value TEXT);

-- mandatory key/values in this table for version 1
-- key                value
-- version            1
-- name               %s must be equal to filename
-- createdate         #
-- lastmodifdate      #

-- optional key/values (some for performance reasons)
-- lastcrc            #
-- size               #
-- numdir             #
-- numfiles           #

INSERT INTO METADATA VALUES('version', 1);

-- concrete CATALOG file
-- id sequential id
-- name file name
-- date includes time and is represented in unix time > (1970)
-- length file length in bytes
-- path original path
-- hash is optional for complete indexing
CREATE TABLE CATALOG(id INT PRIMARY KEY ASC, name TEXT NOT NULL, date INT NOT NULL, size INT NOT NULL, path TEXT NOT NULL, hash TEXT);
