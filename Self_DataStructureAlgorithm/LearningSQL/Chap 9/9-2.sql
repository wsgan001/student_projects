SELECT a.account_id, a.product_cd, a.cust_id, a.avail_balance
FROM account a
WHERE EXISTS (SELECT 1
FROM product p
WHERE p.product_cd = a.product_cd
AND p.product_type_cd = 'LOAN');