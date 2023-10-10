-- DROP DATABASE expense_tracker;

CREATE DATABASE IF NOT EXISTS `expense_tracker`;

CREATE TABLE IF NOT EXISTS `expense_tracker`.`sender` (
    `sender_ID` INT UNSIGNED PRIMARY KEY AUTO_INCREMENT,
    `name` VARCHAR(100) NOT NULL,
    `email` VARCHAR(100) DEFAULT NULL,
    `country_code` VARCHAR(5) DEFAULT NULL,
    `primary_phone` VARCHAR(15) DEFAULT NULL,
    `alternate_phone` VARCHAR(15) DEFAULT NULL,
    `address_line` VARCHAR(255) DEFAULT NULL,
    `city` VARCHAR(50) DEFAULT NULL,
    `state` VARCHAR(50) DEFAULT NULL,
    `pincode` VARCHAR(25) DEFAULT NULL,
    `updated_at` TIMESTAMP NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP
)  CHARSET=UTF32 , ENGINE=INNODB;

ALTER TABLE `expense_tracker`.`sender` MODIFY `email` VARCHAR(100) UNIQUE NOT NULL;
ALTER TABLE `expense_tracker`.`sender` MODIFY `primary_phone` VARCHAR(100) UNIQUE NOT NULL;
-- ALTER TABLE `expense_tracker`.`sender` ADD CONSTRAINT UK_contraint_email UNIQUE(`email`);

-- ALTER TABLE `expense_tracker`.`sender`
-- DROP CONSTRAINT email_3;


CREATE TABLE IF NOT EXISTS `expense_tracker`.`receiver` (
    `receiver_ID` INT UNSIGNED PRIMARY KEY AUTO_INCREMENT,
    `name` VARCHAR(100) NOT NULL,
    `email` VARCHAR(100) DEFAULT NULL,
    `country_code` VARCHAR(5) DEFAULT NULL,
    `primary_phone` VARCHAR(15) DEFAULT NULL,
    `alternate_phone` VARCHAR(15) DEFAULT NULL,
    `address_line` VARCHAR(255) DEFAULT NULL,
    `city` VARCHAR(50) DEFAULT NULL,
    `state` VARCHAR(50) DEFAULT NULL,
    `pincode` VARCHAR(25) DEFAULT NULL,
    `updated_at` TIMESTAMP NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP
)  CHARSET=UTF32 , ENGINE=INNODB;

ALTER TABLE `expense_tracker`.`receiver` MODIFY `email` VARCHAR(100) UNIQUE;
ALTER TABLE `expense_tracker`.`receiver` MODIFY `primary_phone` VARCHAR(100) UNIQUE;


CREATE TABLE IF NOT EXISTS `expense_tracker`.`expense` (
    `sno` INT UNSIGNED PRIMARY KEY AUTO_INCREMENT,
    `date` DATE NOT NULL,
    `item` VARCHAR(100) NOT NULL,
    `expense` DECIMAL(10 , 2 ) NOT NULL,
    `sender_ID` INT UNSIGNED NOT NULL,
    `receiver_ID` INT UNSIGNED NOT NULL,
    `is_include` BOOLEAN DEFAULT TRUE NOT NULL,
    `updated_at` TIMESTAMP NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
    CONSTRAINT FK_sender_expense FOREIGN KEY (sender_ID)
        REFERENCES sender (sender_ID),
    CONSTRAINT FK_receiver_expense FOREIGN KEY (receiver_ID)
        REFERENCES receiver (receiver_ID)
)  CHARSET=UTF32 , ENGINE=INNODB;

-- ALTER TABLE `expense_tracker`.`expense`
-- DROP `is_include`;


CREATE VIEW `expense_tracker`.`v_expense_regular0` AS
    SELECT 
        exp.`sno`,
        exp.`date`,
        exp.`item`,
        exp.`expense`,
        rec.`name` AS 'receiver name',
        rec.`receiver_ID` AS 'receiver ID',
        sen.`name` AS 'sender name',
        exp.`sender_ID` AS 'sender ID',
        exp.`is_include`
    FROM
        `expense_tracker`.`expense` AS exp
            LEFT JOIN
        `expense_tracker`.`receiver` AS rec ON exp.`receiver_ID` = rec.`receiver_ID`
            LEFT JOIN
        `expense_tracker`.`sender` AS sen ON exp.`sender_ID` = sen.`sender_ID`
    WHERE
        exp.`is_include` = 0
    ORDER BY exp.`date` , exp.`updated_at` DESC;
    

CREATE VIEW `expense_tracker`.`v_expense_regular1` AS
    SELECT 
        exp.`sno`,
        exp.`date`,
        exp.`item`,
        exp.`expense`,
        rec.`name` AS 'receiver name',
        rec.`receiver_ID` AS 'receiver ID',
        sen.`name` AS 'sender name',
        exp.`sender_ID` AS 'sender ID',
        exp.`is_include`
    FROM
        `expense_tracker`.`expense` AS exp
            LEFT JOIN
        `expense_tracker`.`receiver` AS rec ON exp.`receiver_ID` = rec.`receiver_ID`
            LEFT JOIN
        `expense_tracker`.`sender` AS sen ON exp.`sender_ID` = sen.`sender_ID`
    WHERE
        exp.`is_include` = 1
    ORDER BY exp.`date` , exp.`updated_at` DESC;
    

CREATE VIEW `expense_tracker`.`v_expense_regular` AS
    SELECT 
        exp.`sno`,
        exp.`date`,
        exp.`item`,
        exp.`expense`,
        rec.`name` AS 'receiver name',
        rec.`receiver_ID` AS 'receiver ID',
        sen.`name` AS 'sender name',
        exp.`sender_ID` AS 'sender ID',
        exp.`is_include`
    FROM
        `expense_tracker`.`expense` AS exp
            LEFT JOIN
        `expense_tracker`.`receiver` AS rec ON exp.`receiver_ID` = rec.`receiver_ID`
            LEFT JOIN
        `expense_tracker`.`sender` AS sen ON exp.`sender_ID` = sen.`sender_ID`
    ORDER BY exp.`date` , exp.`updated_at` DESC;


CREATE VIEW `expense_tracker`.`v_expense_summary0` AS
    SELECT 
        exp.`date`, SUM(exp.`expense`) AS 'expense'
    FROM
        `expense_tracker`.`expense` AS exp
    WHERE
        exp.`is_include` = 0
    GROUP BY exp.`date`
    ORDER BY exp.`date` DESC;
    
CREATE VIEW `expense_tracker`.`v_expense_summary1` AS
    SELECT 
        exp.`date`, SUM(exp.`expense`) AS 'expense'
    FROM
        `expense_tracker`.`expense` AS exp
    WHERE
        exp.`is_include` = 1
    GROUP BY exp.`date`
    ORDER BY exp.`date` DESC;
    
CREATE VIEW `expense_tracker`.`v_expense_summary` AS
    SELECT 
        exp.`date`, SUM(exp.`expense`) AS 'expense'
    FROM
        `expense_tracker`.`expense` AS exp
    GROUP BY exp.`date`
    ORDER BY exp.`date` DESC;
    