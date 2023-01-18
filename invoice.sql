SELECT COUNT(*) 
FROM invoice
WHERE billing_country = 'USA';

SELECT MAX(x.sum)
FROM (SELECT SUM(unit_price * quantity) FROM invoice_line GROUP BY invoice_id)x;

SELECT MIN(x.sum)
FROM (SELECT SUM(unit_price * quantity) FROM invoice_line GROUP BY invoice_id)x;

SELECT (x.sum)
FROM (SELECT SUM(unit_price * quantity) FROM invoice_line GROUP BY invoice_id)x
WHERE sum > 5;

SELECT COUNT(x.sum)
FROM (SELECT SUM(unit_price * quantity) FROM invoice_line GROUP BY invoice_id)x
WHERE sum < 5;

SELECT COUNT(*) 
FROM invoice
WHERE billing_state IN ('CA', 'TX', 'AZ');

SELECT AVG(x.sum)
FROM (SELECT SUM(unit_price * quantity) FROM invoice_line GROUP BY invoice_id)x;

SELECT SUM(x.sum)
FROM (SELECT SUM(unit_price * quantity) FROM invoice_line GROUP BY invoice_id)x;

UPDATE invoice_line
SET quantity = 24
WHERE invoice_id = 5;

DELETE FROM invoice_line
WHERE invoice_id = 1;
DELETE FROM invoice
WHERE invoice_id = 1;