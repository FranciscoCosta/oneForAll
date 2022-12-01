SELECT
    FORMAT(MIN(a.plano_preço), 2) AS faturamento_minimo,
    FORMAT(MAX(a.plano_preço), 2) AS faturamento_maximo,
    FORMAT(AVG(a.plano_preço), 2) AS faturamento_medio,
    FORMAT(SUM(a.plano_preço), 2) AS faturamento_total
FROM SpotifyClone.planos AS a
INNER JOIN SpotifyClone.usuarios AS b
ON b.plano_id = a.plano_id;

