-- ALL ITEMS REGULAR VIEW 

SELECT 
    *
FROM
    `expense_tracker`.`v_expense_regular1`
WHERE
    `date` BETWEEN '2023-10-01' AND '2023-10-31'
ORDER BY `date` DESC;


 -- DATE-WISE TOTAL VIEW: 
SELECT
    *
FROM
    `expense_tracker`.`v_expense_summary1`
WHERE
    `date` BETWEEN '2023-10-01' AND '2023-10-31'
ORDER BY `date` DESC;
 
 
 -- OVERALL VIEW
SELECT 
    COUNT( DISTINCT(`date`) ) as '# Days', SUM( `expense` ) AS expense_1, (26000.00 - SUM(`expense`)) AS "Balance"
FROM
    `expense_tracker`.`v_expense_summary1` AS overall1
WHERE
    `date` BETWEEN '2023-10-01' AND '2023-10-31'
ORDER BY `date` DESC;