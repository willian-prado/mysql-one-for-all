CREATE VIEW top_2_hits_do_momento AS
    SELECT 
        s.title AS `cancao`, COUNT(s.title) AS `reproducoes`
    FROM
        SpotifyClone.User_Song AS us
            INNER JOIN
        SpotifyClone.Song AS s ON s.id = us.song_id
    GROUP BY s.title
    ORDER BY `reproducoes` DESC , `cancao`
    LIMIT 2;
