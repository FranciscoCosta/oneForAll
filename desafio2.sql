SELECT
	COUNT(DISTINCT musicas.musica_id) AS cancoes,
    COUNT(DISTINCT artistas.artista_id) AS artistas,
    COUNT(DISTINCT albuns.album_id) AS albuns
FROM SpotifyClone.musicas
INNER JOIN SpotifyClone.artistas AS artistas
ON musicas.artista_id = artistas.artista_id
INNER JOIN SpotifyClone.albuns AS albuns
ON musicas.album_id = albuns.album_id;