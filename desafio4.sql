
CREATE VIEW SpotifyClone.top_3_artistas AS
SELECT 
a.artista AS artista, COUNT(s.artista_id) AS seguidores
FROM SpotifyClone.artista AS a
INNER JOIN SpotifyClone.seguindo AS s
ON a.artista_id = s.artista_id
GROUP BY s.artista_id
ORDER BY seguindo DESC, artista
LIMIT 3;
