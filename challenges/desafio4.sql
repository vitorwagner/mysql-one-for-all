SELECT
	u.user_name AS 'pessoa_usuaria',
	IF (
		YEAR(MAX(p.play_date)) >= 2021,
		'Ativa',
		'Inativa'
	) AS 'status_pessoa_usuaria'
FROM
	users u
	JOIN play_history p USING (user_id)
GROUP BY
	u.user_name
ORDER BY
	u.user_name;