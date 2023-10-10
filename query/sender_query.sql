-- TO VIEW THE SENDER LIST
SELECT 
    `sender_ID`, `name`, `address_line`, `city`
FROM
    `expense_tracker`.`sender`
ORDER BY `updated_at` DESC;