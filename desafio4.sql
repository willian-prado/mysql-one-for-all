CREATE VIEW top_3_artistas AS
    SELECT 
        a.name AS 'artista', COUNT(ua.user_id) AS 'seguidores'
    FROM
        SpotifyClone.User_Artist AS ua
            INNER JOIN
        SpotifyClone.Artist AS a ON a.id = ua.artist_id
    GROUP BY ua.artist_id
    ORDER BY `seguidores` DESC, `artista` LIMIT 3;
