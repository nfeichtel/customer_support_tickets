SELECT
    ROUND(AVG(customer_age), 0) avg_age,
    MAX(customer_age) max_age,
    MIN(customer_age) min_age
FROM support_tickets;

SELECT
    customer_gender,
    COUNT(*)
FROM support_tickets
GROUP BY customer_gender
