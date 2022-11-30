DROP DATABASE IF EXISTS SpotifyClone;

CREATE DATABASE SpotifyClone;

USE SpotifyClone;

CREATE TABLE planos(
  plano_id INT PRIMARY KEY AUTO_INCREMENT,
  plano_nome VARCHAR(100) NOT NULL,
  plano_preço DECIMAL(5,2) NOT NULL
) engine = InnoDB;


CREATE TABLE usuarios(
  usuario_id INT PRIMARY KEY AUTO_INCREMENT,
  usuario_nome VARCHAR(100) NOT NULL,
  usuario_idade INT NOT NULL,
  plano_id INT NOT NULL,
  FOREIGN KEY (plano_id) REFERENCES planos(plano_id)
) engine = InnoDB;

CREATE TABLE artistas(
  artista_id INT PRIMARY KEY AUTO_INCREMENT,
  artista_nome VARCHAR(100) NOT NULL
) engine = InnoDB;

CREATE TABLE albuns(
  album_id INT PRIMARY KEY AUTO_INCREMENT,
  album_nome VARCHAR(100) NOT NULL,
  artista_id INT NOT NULL,
  FOREIGN KEY (artista_id) REFERENCES artistas(artista_id)
) engine = InnoDB;

CREATE TABLE musicas(
  musica_id INT PRIMARY KEY AUTO_INCREMENT,
  musica_nome VARCHAR(100) NOT NULL,
  album_id INT NOT NULL,
  FOREIGN KEY (album_id) REFERENCES albuns(album_id)
) engine = InnoDB;


CREATE TABLE seguir(
  usuario_id INT NOT NULL,
  artista_id INT NOT NULL,
  PRIMARY KEY (usuario_id, artista_id),
  FOREIGN KEY (usuario_id) REFERENCES usuarios(usuario_id),
  FOREIGN KEY (artista_id) REFERENCES artistas(artista_id)
) engine = InnoDB;


CREATE TABLE historico(
  usuario_id INT NOT NULL,
  musica_id INT NOT NULL,
  PRIMARY KEY (usuario_id, musica_id),
  FOREIGN KEY (usuario_id) REFERENCES usuarios(usuario_id),
  FOREIGN KEY (usuario_id) REFERENCES musicas(musica_id)
) engine = InnoDB;

INSERT INTO planos
(plano_nome, plano_preço)
VALUES('gratuito', 0),('familiar', 7.99),('universitário', 5.99),('pessoal',6.99);

INSERT INTO usuarios
  (usuario_nome, usuario_idade, plano_id)
VALUES
  ('Barbara Liskov', 82, 1),
  ('Robert Cecil Martin', 58, 1),
  ('Ada Lovelace', 37, 2),
  ('Martin Fowler', 46, 2),
  ('Sandi Metz', 58, 2),
  ('Paulo Freire', 19, 2),
  ('Bell Hooks', 26, 3),
  ('Christopher Alexander', 85, 3),
  ('Judith Butler', 45, 4),
  ('Jorge Amado', 58, 4);

INSERT INTO artistas
  (artista_nome)
VALUES
  ('Beyoncé'),
  ('Queen'),
  ('Elis Regina'),
  ('Baco Exu do Blues'),  
  ('Blind Guardian'),
  ('Nina Simone');


INSERT INTO albuns
  (album_nome,artista_id)
VALUES
  ('Renaissance',1),
  ('Jazz',2),
  ('Hot Space',2),
  ('Falso Brilhante',3),
  ('Vento de Maio',3),
  ('QVVJFA?',4),
  ('Somewhere Far Beyond',5),
  ('I Put A Spell On You',6);

  INSERT INTO musicas
  (musica_nome,album_id)
VALUES
  ('BREAK MY SOUL',1),
  ('VIRGO’S GROOVE',1),
  ('ALIEN SUPERSTAR',1),
  ('Don’t Stop Me Now',2),
  ('Under Pressure',3),
  ('Como Nossos Pais',4),
  ('O Medo de Amar é o Medo de Ser Livre',5),
  ('Samba em Paris',6),
  ('The Bard’s Song',7),
  ('Feeling Good',8);

INSERT INTO seguir
  (usuario_id, artista_id)
VALUES
  (1,1),
  (1,2),
  (1,3),
  (2,1),
  (2,3),
  (3,2),
  (4,4),
  (5,5),
  (5,6),
  (6,6),
  (6,1),
  (7,6),
  (9,3),
  (10,2);

INSERT INTO historico
  (usuario_id, musica_id)
VALUES
  (1, 8),
  (1, 2),
  (1, 10),
  (2, 10),
  (2, 7),
  (3, 10),
  (3, 2),
  (4, 8),
  (5, 8),
  (5, 5),
  (6, 7),
  (6, 1),
  (7, 4),
  (8, 4),
  (9, 9),
  (10, 3);

  