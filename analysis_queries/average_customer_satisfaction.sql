--Average customer satisfaction by channel
SELECT
    ticket_channel,
    ROUND(AVG(customer_satisfaction_rating), 2) AS average_satisfaction_rating
FROM (SELECT * FROM support_tickets WHERE customer_satisfaction_rating IS NOT NULL)
GROUP BY ticket_channel