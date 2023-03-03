SELECT
	s.song_name AS 'cancao',
	COUNT(*) AS 'reproducoes'
FROM
	songs s
	JOIN play_history p USING (song_id)
GROUP BY
	s.song_id
ORDER BY
	reproducoes DESC,
	s.song_name
LIMIT
	2;