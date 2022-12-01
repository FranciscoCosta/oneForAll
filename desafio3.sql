SELECT a.usuario_nome AS usuario,
    COUNT(b.musica_id) AS qt_de_musicas_ouvidas,
    ROUND(SUM(c.duracao_segundos / 60), 2) AS total_minutos       
FROM SpotifyClone.usuarios AS a
INNER JOIN SpotifyClone.historico AS b
ON b.usuario_id = user.usuario_id
INNER JOIN SpotifyClone.musicas AS c
ON c.musica_id = b.musica_id
GROUP BY a.usuario_id
ORDER BY a.usuario_nome;

