USE SpotifyClone;
DELIMITER $$

CREATE PROCEDURE albuns_do_artista(
    IN artist_name VARCHAR(50)
)
BEGIN
  SELECT a.name AS `artista`, al.title AS `album` FROM SpotifyClone.Album AS al
  INNER JOIN SpotifyClone.Artist AS a ON a.id = al.artist_id
  WHERE a.name = artist_name;
END $$

DELIMITER ;

CALL albuns_do_artista('Walter Phoenix');
