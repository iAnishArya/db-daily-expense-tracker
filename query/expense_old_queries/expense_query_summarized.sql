-- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- --

-- SUMMARIZED VIEW - `is_include` = FALSE - ORDER BY `date`
SELECT 
    *
FROM
    `expense_tracker`.`v_expense_summary0`
WHERE
    `date` BETWEEN '2023-09-01' AND '2023-09-30';
    
    
 -- SUMMARIZED VIEW - `is_include` = TRUE - ORDER BY `date`
SELECT
    *
FROM
    `expense_tracker`.`v_expense_summary1`
WHERE
    `date` BETWEEN '2023-09-01' AND '2023-09-30';


 -- SUMMARIZED VIEW - ORDER BY `date`
SELECT 
    *
FROM
    `expense_tracker`.`v_expense_summary`
WHERE
    `date` BETWEEN '2023-09-01' AND '2023-09-30';

-- delete from `expense_tracker`.expense where sno = 13;