CREATE VIEW SpotifyClone.top_2_hits_do_momento AS
SELECT 
m.musica as cancao, COUNT(h.usuario_id) as reproducoes
FROM SpotifyClone.historico as h
INNER JOIN SpotifyClone.musica as m
ON m.musica_id = h.musica_id
GROUP BY cancao
ORDER BY reproducoes desc, cancao asc
LIMIT 2;
