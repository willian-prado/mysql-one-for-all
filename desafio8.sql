DELIMITER $$

CREATE TRIGGER trigger_usuario_delete
  BEFORE DELETE ON SpotifyClone.User
  FOR EACH ROW
BEGIN
  DELETE FROM SpotifyClone.User_Artist WHERE user_id = OLD.id; 
  DELETE FROM SpotifyClone.User_Song WHERE user_id = OLD.id;
END
$$

DELIMITER ;
