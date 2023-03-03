SELECT
	COUNT(*) AS 'musicas_no_historico'
FROM
	users u
	JOIN play_history p USING (user_id)
WHERE
	u.user_name = 'Barbara Liskov';