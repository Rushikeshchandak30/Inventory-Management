DELIMITER $$
CREATE TRIGGER customerPhoneNoCheckTrigger
    BEFORE INSERT ON customer
    FOR EACH ROW
    BEGIN
        IF NEW.phone_no < 100000000 OR NEW.phone_no > 9999999999
            THEN SIGNAL SQLSTATE '45000' SET MESSAGE_TEXT = 'Phone number should be of 10 digits';
        END IF;
    END$$
DELIMITER;

-- This will work
INSERT INTO customer(
    email_id,
    phone_no
)
VALUES(
    "abcd.a@gmail.com",
    1234567890
);

-- This will give error
INSERT INTO customer(
    email_id,
    phone_no
)
VALUES(
    "abcd.b@gmail.com",
    12345678
);


DELIMITER $$
CREATE TRIGGER customerEmailCheckTrigger
    BEFORE INSERT ON customer
    FOR EACH ROW
    BEGIN
        IF NEW.email_id NOT LIKE '%@%.%'
            THEN SIGNAL SQLSTATE '45000' SET MESSAGE_TEXT = 'Email should be in the format of abc.ghi@xyz.jkl';
        END IF;
    END$$
DELIMITER ;

CREATE TABLE customer_backup(
    customer_id INT,
    email_id VARCHAR(50),
    phone_no BIGINT
);

DELIMITER $$
CREATE TRIGGER customerDeleteBackupTrigger
    BEFORE DELETE ON customer
    FOR EACH ROW
    BEGIN
        INSERT INTO customer_backup VALUES(OLD.customer_id, OLD.email_id, OLD.phone_no);
    END$$
DELIMITER ;