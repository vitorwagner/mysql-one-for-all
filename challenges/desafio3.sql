SELECT
	u.user_name AS 'pessoa_usuaria',
	COUNT(*) AS 'musicas_ouvidas',
	ROUND(SUM(s.song_length) / 60, 2) AS 'total_minutos'
FROM
	users u
	JOIN play_history p USING (user_id)
	JOIN songs s USING (song_id)
GROUP BY
	u.user_name
ORDER BY
	u.user_name;