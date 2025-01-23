-- Customer Satisfaction score
SELECT 
    ROUND(ROUND((SELECT COUNT(*) FROM (SELECT * FROM support_tickets WHERE customer_satisfaction_rating IS NOT NULL AND customer_satisfaction_rating >= 4.0)), 0)
        / ROUND(COUNT(*), 0) * 100, 2) AS csat
    FROM (SELECT * FROM support_tickets WHERE customer_satisfaction_rating IS NOT NULL)


