-- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- --

-- OVERALL VIEW
SELECT 
    COUNT( DISTINCT(`date`) ) as '# Days', SUM(`expense`) AS expense_overall, (26000.00 - SUM(`expense`)) AS "Balance"
FROM
    `expense_tracker`.`v_expense_summary` AS overall
WHERE
    `date` BETWEEN '2023-10-01' AND '2023-10-31';
    
-- OVERALL VIEW - `is_include` = FALSE
SELECT 
    COUNT( DISTINCT(`date`) ) as '# Days', SUM(`expense`) AS expense_0, (26000.00 - SUM(`expense`)) AS "Balance"
FROM
    `expense_tracker`.`v_expense_summary0` AS overall0
WHERE
    `date` BETWEEN '2023-10-01' AND '2023-10-31';

-- OVERALL VIEW - `is_include` = TRUE
SELECT 
    COUNT( DISTINCT(`date`) ) as '# Days', SUM( `expense` ) AS expense_1, (26000.00 - SUM(`expense`)) AS "Balance"
FROM
    `expense_tracker`.`v_expense_summary1` AS overall1
WHERE
    `date` BETWEEN '2023-10-01' AND '2023-10-31';

-- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- --