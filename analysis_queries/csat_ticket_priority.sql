WITH count_customers_surveyed AS
    (SELECT
        ticket_priority,
        COUNT(customer_satisfaction_rating)::numeric AS customers_surveyed
    FROM support_tickets
    WHERE customer_satisfaction_rating IS NOT NULL
    GROUP BY ticket_priority),

    count_customers_satisfied AS
    (SELECT
        ticket_priority,
        COUNT(customer_satisfaction_rating)::numeric AS customers_satisfied
    FROM support_tickets
    WHERE customer_satisfaction_rating IS NOT NULL AND customer_satisfaction_rating >= 4
    GROUP BY ticket_priority)

SELECT
    count_customers_surveyed.ticket_priority,
    customers_surveyed,
    customers_satisfied,
    ROUND(customers_satisfied/customers_surveyed * 100, 0) AS csat
FROM count_customers_surveyed
JOIN count_customers_satisfied
    ON count_customers_surveyed.ticket_priority = count_customers_satisfied.ticket_priority