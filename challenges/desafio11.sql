SELECT
	al.album_name AS 'album',
	COUNT(*) AS 'favoritadas'
FROM
	albums al
  JOIN songs s USING (album_id)
	JOIN favorites f USING (song_id)
GROUP BY
	al.album_id
ORDER BY
	favoritadas DESC,
	al.album_name
LIMIT
  3;