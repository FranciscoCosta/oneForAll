SELECT a.artista_nome AS artista,
    b.album_nome AS album,
    COUNT(c.artista_id) AS seguidores
FROM SpotifyClone.artistas AS a
INNER JOIN SpotifyClone.albuns AS b
ON b.artista_id = a.artista_id
INNER JOIN SpotifyClone.seguir AS c
ON c.artista_id = a.artista_id
GROUP BY b.album_id
ORDER BY seguidores DESC, artista ASC, album ASC;
