CREATE VIEW SpotifyClone.faturamento_atual AS
SELECT 
ROUND(MIN(p.valor), 2) as faturamento_minimo, 
ROUND(MAX(p.valor), 2) as faturamento_maximo,
ROUND(AVG(p.valor), 2) as faturamento_medio,
ROUND(SUM(p.valor), 2) as faturamento_total
FROM SpotifyClone.usuario as u
INNER JOIN SpotifyClone.plano as p
ON u.plano_id = p.plano_id;
