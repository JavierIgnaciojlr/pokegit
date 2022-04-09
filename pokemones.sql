\c jlopez
DROP DATABASE pokemones;
CREATE DATABASE  pokemones;
\c pokemones; 

CREATE TABLE pokemones(
pokedex SERIAL,
name VARCHAR(50),
type1 VARCHAR(50),
type2 VARCHAR(50),
);
SELECT * FROM pokemones;
\copy pokemones FROM 'pokemones.csv' csv header;
SELECT * FROM pokemones;

SELECT name AS nombres, pokedex AS numero FROM pokemones;
SELECT pokedex, name FROM pokemones WHERE name = 'Squirtle';
SELECT * FROM pokemones WHERE type1 = 'Fire';
SELECT * FROM pokemones WHERE type1 = 'Normal';
SELECT * FROM pokemones WHERE type1 = 'Normal' AND type2 = 'Flying';