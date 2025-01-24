SELECT 
    ROUND(AVG(hours_to_resolution), 2) AS average_hours_to_resolution,
    ROUND(MAX(hours_to_resolution), 2) AS max_hours_to_resolution,
    ROUND(MIN(hours_to_resolution), 2) AS min_hours_to_resolution
FROM
    (SELECT
        first_response_time,
        time_to_resolution,
        time_to_resolution - first_response_time,
        ROUND(EXTRACT(EPOCH FROM time_to_resolution - first_response_time) / 3600, 2) AS hours_to_resolution,
        customer_satisfaction_rating
    FROM (SELECT * FROM support_tickets WHERE customer_satisfaction_rating IS NOT NULL)
    ORDER BY hours_to_resolution DESC);

SELECT 
    ticket_channel,
    ROUND(AVG(hours_to_resolution), 2) AS average_hours_to_resolution,
    ROUND(MAX(hours_to_resolution), 2) AS max_hours_to_resolution,
    ROUND(MIN(hours_to_resolution), 2) AS min_hours_to_resolution
FROM
    (SELECT
        ticket_channel,
        first_response_time,
        time_to_resolution,
        time_to_resolution - first_response_time,
        ROUND(EXTRACT(EPOCH FROM time_to_resolution - first_response_time) / 3600, 2) AS hours_to_resolution,
        customer_satisfaction_rating
    FROM (SELECT * FROM support_tickets WHERE customer_satisfaction_rating IS NOT NULL)
    ORDER BY hours_to_resolution DESC)
GROUP BY ticket_channel;




