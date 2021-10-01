DELIMITER $$

CREATE FUNCTION quantidade_musicas_no_historico(id_user int)
RETURNS INT READS SQL DATA
BEGIN
    DECLARE songs_history INT;
    SELECT 
    COUNT(user_id) AS `quantidade_musicas_no_historico`
  FROM
    SpotifyClone.User_Song
  WHERE
    user_id = id_user INTO songs_history;
    RETURN songs_history;
END $$

DELIMITER ;

SELECT quantidade_musicas_no_historico(3);
