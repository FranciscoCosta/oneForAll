SELECT a.musica_nome AS cancao,
    COUNT(b.musica_id) AS reproducoes
FROM SpotifyClone.musicas AS a
INNER JOIN SpotifyClone.historico AS b
ON a.musica_id = b.musica_id
GROUP BY cancao
ORDER BY reproducoes DESC, cancao
LIMIT 2;

