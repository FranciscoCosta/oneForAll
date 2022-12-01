SELECT a.usuario_nome AS usuario,
    CASE WHEN YEAR( MAX(b.data_reproducao) )  >= 2021 THEN 'Usuário ativo'
    ELSE 'Usuário inativo'
    END
AS status_usuario
FROM SpotifyClone.usuarios AS a
INNER JOIN SpotifyClone.historico AS b
ON b.usuario_id = a.usuario_id
GROUP BY usuario
ORDER BY usuario ASC;

