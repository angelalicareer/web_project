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

INSERT INTO graphic_design(name, image_url)
VALUES('Tacos', 'https://images.unsplash.com/photo-1551504734-5ee1c4a1479b?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=870&q=80');

INSERT INTO graphic_design(name, image_url)
VALUES('Burger', 'https://images.unsplash.com/photo-1568901346375-23c9450c58cd?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=699&q=80');
