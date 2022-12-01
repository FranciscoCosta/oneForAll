SELECT a.artista_nome AS artista,
    b.album_nome AS album
FROM SpotifyClone.artistas AS a
INNER JOIN SpotifyClone.albuns AS b
WHERE a.artista_nome LIKE 'Elis Regina' AND b.artista_id = '3';

