DELIMITER //
DROP PROCEDURE IF EXISTS print_time //

CREATE PROCEDURE print_time(seconds INT)
BEGIN
  SELECT CONCAT
  (
    FLOOR(seconds / 86400), " days ",
    FLOOR(seconds % 86400 / 3600), " hours ",
    FLOOR(seconds % 86400 % 3600 / 60), " minutes ",
    FLOOR(seconds % 86400 % 60), " seconds"
  ) as time;
END //

CALL print_time(123456) //