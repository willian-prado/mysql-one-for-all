CREATE VIEW historico_reproducao_usuarios AS
    SELECT 
        u.name AS 'usuario', s.title AS 'nome'
    FROM
        SpotifyClone.User_Song AS us
            INNER JOIN
        SpotifyClone.User AS u ON u.id = us.user_id
            INNER JOIN
        SpotifyClone.Song AS s ON s.id = us.song_id
    ORDER BY u.name ASC , s.title;
