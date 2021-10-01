CREATE VIEW cancoes_premium AS
    SELECT 
        s.title AS `nome`, COUNT(s.title) AS `reproducoes`
    FROM
        SpotifyClone.User_Song AS us
            INNER JOIN
        SpotifyClone.Song AS s ON s.id = us.song_id
            INNER JOIN
        SpotifyClone.User AS u ON u.id = us.user_id
    WHERE
        u.id IN (2 , 3)
    GROUP BY s.title
    ORDER BY `nome`;
