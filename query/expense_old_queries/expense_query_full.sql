-- SHOW CREATE TABLE `expense_tracker`.`receiver`;


-- REGULAR VIEW - ORDER BY `date`, `updated_at` DESC
SELECT 
    *
FROM
    `expense_tracker`.`v_expense_regular`
WHERE
    `date` BETWEEN '2023-10-01' AND '2023-10-31'
ORDER BY `v_expense_regular`.`date` DESC;

-- DELETE FROM `expense_tracker`.`expense`WHERE sno = 58;
-- UPDATE `expense_tracker`.`expense` SET date = "2023-08-09" WHERE sno = 38;

-- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- --

-- REGULAR VIEW - `is_include` = FALSE - ORDER BY `date`, `updated_at` DESC
SELECT 
    *
FROM
    `expense_tracker`.`v_expense_regular0`
WHERE
    `date` BETWEEN '2023-10-01' AND '2023-10-31';
    
-- REGULAR VIEW - `is_include` = TRUE - ORDER BY `date`, `updated_at` DESC
SELECT 
    *
FROM
    `expense_tracker`.`v_expense_regular1`
WHERE
    `date` BETWEEN '2023-10-01' AND '2023-10-31';

-- SELECT * FROM `expense_tracker`.`expense`
-- ORDER BY `sno` DESC;

-- UPDATE `expense_tracker`.`expense`
-- SET `expense`.`receiver_ID` = 17
-- WHERE `sno` IN (31);
