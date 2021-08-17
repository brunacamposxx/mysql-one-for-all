DROP DATABASE IF EXISTS SpotifyClone;
CREATE DATABASE IF NOT EXISTS SpotifyClone;
USE SpotifyClone;

CREATE TABLE SpotifyClone.plano(
plano_id INT PRIMARY KEY AUTO_INCREMENT,
plano VARCHAR(45) NOT NULL,
valor DOUBLE NOT NULL
) ENGINE=INNODB;

CREATE TABLE SpotifyClone.usuario(
usuario_id INT PRIMARY KEY AUTO_INCREMENT,
usuario VARCHAR(45) NOT NULL,
idade INT NOT NULL,
plano_id INT NOT NULL,
FOREIGN KEY (plano_id) REFERENCES SpotifyClone.plano(plano_id)
) ENGINE=INNODB;

CREATE TABLE SpotifyClone.artista(
artista_id INT PRIMARY KEY AUTO_INCREMENT,
artista VARCHAR(45) NOT NULL
) ENGINE=INNODB;

CREATE TABLE SpotifyClone.album(
album_id INT PRIMARY KEY AUTO_INCREMENT,
album VARCHAR(45) NOT NULL,
artista_id INT NOT NULL,
FOREIGN KEY (artista_id) REFERENCES SpotifyClone.artista(artista_id)
) ENGINE=INNODB;

CREATE TABLE SpotifyClone.musica(
musica_id INT PRIMARY KEY AUTO_INCREMENT,
musica VARCHAR(45) NOT NULL,
album_id INT NOT NULL,
FOREIGN KEY (album_id) REFERENCES SpotifyClone.album(album_id)
) ENGINE=INNODB;

CREATE TABLE SpotifyClone.seguindo(
usuario_id INT NOT NULL,
artista_id INT NOT NULL,
CONSTRAINT PRIMARY KEY (usuario_id, artista_id),
FOREIGN KEY (usuario_id) REFERENCES SpotifyClone.usuario(usuario_id),
FOREIGN KEY (artista_id) REFERENCES SpotifyClone.artista(artista_id)
) ENGINE=INNODB;

CREATE TABLE SpotifyClone.historico(
usuario_id INT NOT NULL,
musica_id INT NOT NULL,
CONSTRAINT PRIMARY KEY (usuario_id, musica_id),
FOREIGN KEY (usuario_id) REFERENCES SpotifyClone.usuario(usuario_id),
FOREIGN KEY (musica_id) REFERENCES SpotifyClone.musica(musica_id)
) ENGINE=INNODB;

INSERT INTO SpotifyClone.plano (plano, valor) VALUES
('gratuito', 0),
('universitário', 5.99),
('familiar', 7.99);

INSERT INTO SpotifyClone.usuario (usuario, idade, plano_id) VALUES
('Thati', 23, 1),
('Cintia', 35, 3),
('Bill', 20, 2),
('Roger', 45, 1);

INSERT INTO SpotifyClone.artista (artista) VALUES
('Walter Phoenix'),
('Peter Strong'),
('Lance Day'),
('Freedie Shannon');

INSERT INTO SpotifyClone.album (album, artista_id) VALUES
('Envious', 1),
('Exuberant', 1),
('Hallowed Steam', 2),
('Incandescent', 3),
('Temporary Culture', 4);

INSERT INTO SpotifyClone.musica (musica, album_id) VALUES
('Soul For Us', 1),
('Reflections Of Magic', 1),
('Dance With Her Own', 1),
('Troubles Of My Inner Fire', 2),
('Time Fireworks', 2),
('Magic Circus', 3),
('Honey, So Do I', 3),
('Sweetie, Let`s Go Wild', 3),
('She Knows', 3),
('Fantasy For Me', 4),
('Celebration Of More', 4),
('Rock His Everything', 4),
('Home Forever', 4),
('Diamond Power', 4),
('Honey, Let`s Be Silly', 4),
('Thang Of Thunder', 5),
('Words Of Her Life', 5),
('Without My Streets', 5);

INSERT INTO SpotifyClone.seguindo (usuario_id, artista_id) VALUES
(1,	1),
(1,	4),
(1,	3),
(2,	1),
(2,	3),
(3,	2),
(3,	1),
(4,	4);

INSERT INTO SpotifyClone.historico (usuario_id, musica_id) VALUES
(1,	1),
(1,	6),
(1,	14),
(1,	16),
(2,	13),
(2,	17),
(2,	2),
(2,	15),
(3,	4),
(3,	16),
(3,	6),
(4,	3),
(4,	18),
(4,	11);
