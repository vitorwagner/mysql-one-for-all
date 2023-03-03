SELECT
	ar.artist_name AS 'artista',
	CASE
    WHEN COUNT(*) >= 5 THEN 'A'
    WHEN COUNT(*) IN(3, 4) THEN 'B'
    WHEN COUNT(*) = 2 THEN 'C'
    ELSE '-'
    END AS 'ranking'
FROM
	artists ar
	JOIN albums al USING (artist_id)
	JOIN songs s USING (album_id)
	LEFT JOIN favorites f USING (song_id)
GROUP BY
	ar.artist_id
ORDER BY
	(CASE WHEN ranking like '-' THEN 1 ELSE 0 END),
	ranking,
  ar.artist_name   