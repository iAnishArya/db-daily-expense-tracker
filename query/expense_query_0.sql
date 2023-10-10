-- REGULAR VIEW 

SELECT 
    *
FROM
    `expense_tracker`.`v_expense_regular0`
WHERE
    `date` BETWEEN '2023-10-01' AND '2023-10-31';

-- OVERALL VIEW
SELECT 
    COUNT( DISTINCT(`date`) ) as '# Days', SUM( `expense` ) AS expense_1, (26000.00 - SUM(`expense`)) AS "Balance"
FROM
    `expense_tracker`.`v_expense_summary0` AS overall0
WHERE
    `date` BETWEEN '2023-10-01' AND '2023-10-31';

 -- DATE-WISE VIEW: 
SELECT
    *
FROM
    `expense_tracker`.`v_expense_summary0`
WHERE
    `date` BETWEEN '2023-10-01' AND '2023-10-31';
 