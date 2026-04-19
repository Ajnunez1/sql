--Section 2--
---SELECT--
/* START QUERY#1*/
SELECT *FROM customer;
/* END QUERY#1*/

/* START QUERY#2*/
SELECT *FROM customer
ORDER BY customer_first_name ASC, customer_last_name ASC
LIMIT 10;
/* END QUERY#2*/

---WHERE--
/* START QUERY#3*/
SELECT*FROM customer_purchases
WHERE product_id = '4' OR product_id = '9'
LIMIT 25;
/* END QUERY#3*/

/* START QUERY#4*/
SELECT*,
(quantity*cost_to_customer_per_qty) AS price
FROM customer_purchases
WHERE customer_id BETWEEN 8 AND 10
LIMIT 25;
/* END QUERY#4*/

---CASE--
/* START QUERY#5*/
SELECT
product_id, product_name,
CASE
WHEN product_qty_type= 'unit' THEN 'unit'
ELSE 'bulk'
END AS prod_qty_type_condensed,

---For not write again I put it in the same QUERY
CASE
WHEN lower (product_name) like '%pepper%' THEN 1
ELSE 0
END AS peper_flag
FROM product;
/* END QUERY#5*/

---JOIN--
/* START QUERY#6*/


/* END QUERY#6*/

