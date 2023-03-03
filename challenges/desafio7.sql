SELECT
	ar.artist_name AS 'artista',
	al.album_name AS 'album',
	COUNT(*) AS 'pessoas_seguidoras'
FROM
	artists ar
	JOIN albums al USING (artist_id)
	JOIN followers f USING (artist_id)
GROUP BY
	al.album_id
ORDER BY
	pessoas_seguidoras DESC,
	ar.artist_name,
	al.album_name;