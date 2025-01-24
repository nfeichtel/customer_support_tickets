-- CSAT based on ticket subject

WITH count_customers_surveyed AS
    (SELECT
        ticket_subject,
        COUNT(customer_satisfaction_rating)::numeric AS customers_surveyed
    FROM support_tickets
    WHERE customer_satisfaction_rating IS NOT NULL
    GROUP BY ticket_subject),

    count_customers_satisfied AS
    (SELECT
        ticket_subject,
        COUNT(customer_satisfaction_rating)::numeric AS customers_satisfied
    FROM support_tickets
    WHERE customer_satisfaction_rating IS NOT NULL AND customer_satisfaction_rating >= 4
    GROUP BY ticket_subject)

SELECT
    count_customers_surveyed.ticket_subject,
    customers_surveyed,
    customers_satisfied,
    ROUND(customers_satisfied/customers_surveyed * 100, 0) AS csat
FROM count_customers_surveyed
JOIN count_customers_satisfied
    ON count_customers_surveyed.ticket_subject = count_customers_satisfied.ticket_subject
ORDER BY csat DESC

