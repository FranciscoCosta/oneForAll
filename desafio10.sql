SELECT a.musica_nome AS nome, COUNT(b.musica_id) AS reproducoes
FROM SpotifyClone.historico AS b
INNER JOIN SpotifyClone.musicas AS a
ON a.musica_id = b.musica_id
INNER JOIN SpotifyClone.usuarios AS c
ON c.usuario_id = b.usuario_id
INNER JOIN SpotifyClone.planos AS d
ON d.plano_id = c.plano_id
WHERE d.plano_nome IN('gratuito', 'pessoal')
GROUP BY a.musica_nome
ORDER BY musica_nome ASC;

