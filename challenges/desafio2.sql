SELECT  (
        SELECT COUNT(*)
        FROM songs
        ) AS cancoes,
        (
        SELECT COUNT(*)
        FROM artists
        ) AS artistas,
        (
        SELECT COUNT(*)
        FROM albums
        ) as albuns
