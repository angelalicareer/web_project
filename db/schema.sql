CREATE DATABASE my_site_db;
\c my_site_db

CREATE TABLE graphic_design(
  id SERIAL PRIMARY KEY,
  name TEXT,
  image_url TEXT,
  description TEXT
);

CREATE TABLE web_design(
  id SERIAL PRIMARY KEY,
  name TEXT,
  image_url TEXT,
  description TEXT
);

CREATE TABLE users(
  id SERIAL PRIMARY KEY,
  first_name TEXT,
  last_name TEXT,
  email TEXT,
  password_digest TEXT
);

CREATE TABLE requirements(
  id SERIAL PRIMARY KEY,
  userid INTEGER,
  description TEXT
);

INSERT INTO graphic_design (name, image_url)
VALUES ('Graphic 1', '/images/graphic1.jpg'),
('Graphic 2', '/images/graphic2.png'),
('Graphic 3', '/images/graphic3.png'),
('Graphic 4', '/images/project2.png');

INSERT INTO web_design (name, image_url)
VALUES ('Web 1', '/images/web1.png'),
('Web 2', '/images/web2.png'),
('Web 3', '/images/web3.png'),
('Web 4', '/images/web4.png');
