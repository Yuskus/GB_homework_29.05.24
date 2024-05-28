DELIMITER //
DROP PROCEDURE IF EXISTS print_even_numbers //

CREATE PROCEDURE print_even_numbers(end_num INT)
BEGIN
  DECLARE num INT DEFAULT 1;
  DECLARE res VARCHAR(100) DEFAULT '';
  WHILE num < end_num DO
    IF num % 2 = 0
      THEN SET res = CONCAT(res, num, ', ');
    END IF;
    SET num = num + 1;
  END WHILE;
  IF num % 2 = 0
    THEN SET res = CONCAT(res, num);
  END IF;
  SELECT res AS even_numbers;
END //

CALL print_even_numbers(10) //