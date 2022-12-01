SELECT COUNT(a.musica_id) AS quantidade_musicas_no_historico 
FROM SpotifyClone.historico AS a
INNER JOIN SpotifyClone.usuarios AS b
ON a.usuario_id = b.usuario_id
WHERE b.usuario_nome LIKE 'Barbara Liskov';