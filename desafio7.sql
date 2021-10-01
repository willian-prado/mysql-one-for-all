CREATE VIEW perfil_artistas AS
    SELECT 
        a.name AS `artista`,
        al.title AS `album`,
        COUNT(al.title) AS `seguidores`
    FROM
        SpotifyClone.User_Artist AS ua
            INNER JOIN
        SpotifyClone.Artist AS a ON a.id = ua.artist_id
            INNER JOIN
        SpotifyClone.Album AS al ON ua.artist_id = al.artist_id
    GROUP BY `album` , `artista`
    ORDER BY `seguidores` DESC , `artista` , `album`;
