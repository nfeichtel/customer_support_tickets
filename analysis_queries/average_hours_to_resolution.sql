SELECT 
    ROUND(AVG(hours_to_resolution), 2) average_hours_to_resolution
FROM
    (SELECT
        first_response_time,
        time_to_resolution,
        time_to_resolution - first_response_time,
        ROUND(EXTRACT(EPOCH FROM time_to_resolution - first_response_time) / 3600, 2) AS hours_to_resolution,
        customer_satisfaction_rating
    FROM (SELECT * FROM support_tickets WHERE customer_satisfaction_rating IS NOT NULL)
    ORDER BY hours_to_resolution DESC)