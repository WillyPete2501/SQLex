DROP TABLE IF EXISTS movies;
CREATE TABLE movies (
  id serial,
  title text,
  duration integer,
  rating varchar(10),
  genre text,
  is_3d boolean NOT NULL,
  released_at timestamp with time zone,
  score numeric(3, 1)
);

DROP TABLE IF EXISTS awards;
CREATE TABLE awards (
  id serial,
  movie_id serial,
  kind text,
  name text
);

ALTER TABLE awards ADD COLUMN award_type boolean NOT NULL;

INSERT INTO movies (
  title,
  duration, 
  rating, 
  genre, 
  is_3d, 
  released_at, 
  score) VALUES (
    'Frozen',
    102, 
    'PG', 
    'Animation', 
    TRUE, 
    '2013-11-27 00:00:00 UTC', 
    7.6);

INSERT INTO movies (title, duration, rating, genre, is_3d, released_at, score) VALUES ('X-Men: Apocalypse', 144, 'PG-13', 'Action', TRUE, '2016-05-27 00:00:00 UTC', 7.4);
INSERT INTO movies (title, duration, rating, genre, is_3d, released_at, score) VALUES ('The Princess Bride', 98, 'PG', 'Adventure', FALSE, '1987-10-09 00:00:00 UTC', 8.1);
INSERT INTO movies (title, duration, rating, genre, is_3d, released_at, score) VALUES ('Pulp Fiction', 154, 'R', 'Crime', FALSE, '1994-10-14 00:00:00 UTC', 8.9);