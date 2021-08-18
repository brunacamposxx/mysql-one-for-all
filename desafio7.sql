CREATE VIEW SpotifyClone.perfil_artistas AS
SELECT
art.artista as artista, alb.album as album, COUNT(s.usuario_id) as seguidores
FROM SpotifyClone.album as alb
INNER JOIN SpotifyClone.artista as art 
ON alb.artista_id = art.artista_id
INNER JOIN SpotifyClone.seguindo as s
ON s.artista_id = art.artista_id
GROUP BY 2, 1
ORDER BY seguidores DESC, artista, album;
