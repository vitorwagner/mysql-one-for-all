SELECT
	ar.artist_name AS 'artista',
	al.album_name AS 'album'
FROM
	artists ar
	JOIN albums al USING (artist_id)
WHERE
	ar.artist_name = 'Elis Regina'
ORDER BY
	al.album_name;