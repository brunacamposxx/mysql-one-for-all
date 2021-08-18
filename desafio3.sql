
CREATE VIEW SpotifyClone.historico_reproducao_usuarios AS
SELECT 
u.usuario as usuario, m.musica as nome
FROM SpotifyClone.historico as h
INNER JOIN SpotifyClone.usuario as u
ON u.usuario_id = h.usuario_id
INNER JOIN SpotifyClone.musica as m
ON h.musica_id = m.musica_id
ORDER BY usuario, nome;
