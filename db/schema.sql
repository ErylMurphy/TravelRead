-- DROP DATABASE IF EXISTS travelread;
-- CREATE DATABASE travelread;

-- \c travelread

DROP TABLE IF EXISTS states CASCADE;
DROP TABLE IF EXISTS books;

CREATE TABLE states (
  id SERIAL PRIMARY KEY,
  name TEXT,
  state_img TEXT
);

CREATE TABLE books (
  id SERIAL PRIMARY KEY,
  title TEXT,
  author TEXT,
  date INTEGER,
  description TEXT,
  img TEXT,
  state_id INTEGER REFERENCES states(id)
);