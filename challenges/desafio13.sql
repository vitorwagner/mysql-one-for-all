SELECT 
COUNT(DISTINCT user_id) as 'total_pessoas_usuarias',
COUNT(song_id) as 'total_favoritadas',
CASE
	WHEN user_age > 60 THEN 'Maior de 60 anos'
    WHEN user_age BETWEEN 30 AND 60 THEN 'Entre 31 e 60 anos'
	ELSE 'Até 30 anos'
	END AS faixa_etaria

FROM
	users u
    LEFT JOIN favorites f USING (user_id)
GROUP BY
	faixa_etaria