CREATE VIEW SpotifyClone.cancoes_premium AS
SELECT
      m.musica AS nome,
      COUNT(h.musica_id) AS reproducoes
FROM
      (SELECT
            usuario_id
      FROM
            SpotifyClone.usuario
      WHERE
            plano_id IN (2, 3)) AS u
INNER JOIN SpotifyClone.historico AS h ON u.usuario_id = h.usuario_id
INNER JOIN SpotifyClone.musica AS m ON h.musica_id = m.musica_id
GROUP BY 1
ORDER BY 1;
