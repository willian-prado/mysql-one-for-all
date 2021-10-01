CREATE DATABASE IF NOT EXISTS SpotifyClone;
USE SpotifyClone;

CREATE TABLE Artist (
    id INT PRIMARY KEY AUTO_INCREMENT,
    name VARCHAR(50) NOT NULL
);

CREATE TABLE Plan (
    id INT PRIMARY KEY AUTO_INCREMENT,
    type VARCHAR(50) NOT NULL,
    price DECIMAL(3 , 2 ) NOT NULL
);

CREATE TABLE User (
    id INT PRIMARY KEY AUTO_INCREMENT,
    name VARCHAR(25),
    age INT,
    plan_id INT NOT NULL,
    FOREIGN KEY (plan_id)
        REFERENCES Plan (id)
);

CREATE TABLE Album (
    id INT PRIMARY KEY AUTO_INCREMENT,
    title VARCHAR(50) NOT NULL,
    artist_id INT NOT NULL,
    FOREIGN KEY (artist_id)
        REFERENCES Artist (id)
);

CREATE TABLE Song (
    id INT PRIMARY KEY AUTO_INCREMENT,
    title VARCHAR(50),
    album_id INT NOT NULL,
    artist_id INT NOT NULL,
    FOREIGN KEY (album_id)
        REFERENCES Album (id),
    FOREIGN KEY (artist_id)
        REFERENCES Artist (id)
);

-- Histórico de musicas de usuários
CREATE TABLE User_Song (
    user_id INT NOT NULL,
    song_id INT NOT NULL,
    CONSTRAINT PRIMARY KEY (user_id , song_id),
    FOREIGN KEY (user_id)
        REFERENCES User (id),
    FOREIGN KEY (song_id)
        REFERENCES Song (id)
);

-- Seguindo artistas 
CREATE TABLE User_Artist (
    user_id INT NOT NULL,
    artist_id INT NOT NULL,
    CONSTRAINT PRIMARY KEY (artist_id , user_id),
    FOREIGN KEY (user_id)
        REFERENCES User (id),
    FOREIGN KEY (artist_id)
        REFERENCES Artist (id)
);

INSERT INTO Artist(name)
VALUES
	('Walter Phoenix'),
    ('Peter Strong'),
    ('Lance Day'),
    ('Freedie Shannon');

INSERT INTO Plan(type, price)
VALUES
	('gratuito', 0),
    ('familiar', 7.99),
    ('universitário', 5.99);

INSERT INTO User(name, age, plan_id)
VALUES
	('Thati', 23, 1),
    ('Cintia', 35, 2),
    ('Bill', 20, 3),
    ('Roger', 45, 1);

INSERT INTO Album(title, artist_id)
VALUES
	('Envious', 1),
    ('Exuberant', 1),
    ('Hallowed Steam', 2),
    ('Incandescent', 3),
    ('Temporary Culture', 4);

INSERT INTO Song(title, album_id, artist_id)
VALUES
  ('Soul For Us', 1, 1),
  ('Reflections Of Magic', 1, 1),
  ('Dance With Her Own', 1, 1 ),
  ('Troubles Of My Inner Fire', 2, 1),
  ('Time Fireworks', 2, 1),
  ('Magic Circus', 3, 2),
  ('Honey, So Do I', 3, 2),
  ("Sweetie, Let's Go Wild", 3, 2),
  ('She Knows', 3, 2),
  ('Fantasy For Me', 4, 3),
  ('Celebration Of More', 4, 3),
  ('Rock His Everything', 4, 3),
  ('Home Forever', 4, 3),
  ('Diamond Power', 4, 3),
  ("Honey, Let's Be Silly", 4, 3),
  ('Thang Of Thunder', 5, 4),
  ('Words Of Her Life', 5, 4),
  ('Without My Streets', 5, 4);
	
INSERT INTO User_Song(user_id, song_id)
VALUES
	(1, 1),
	(1, 6),
	(1, 14),
	(1, 16),
	(2, 13),
	(2, 17),
	(2, 2),
	(2, 15),
	(3, 4),
	(3, 16),
	(3, 6),
	(4, 3),
	(4, 18),
	(4, 11);

INSERT INTO User_Artist(user_id, artist_id)
VALUES
	(1, 1),
	(1, 4),
	(1, 3),
	(2, 1),
	(2, 3),
	(3, 2),
	(3, 1),
	(4, 4);
