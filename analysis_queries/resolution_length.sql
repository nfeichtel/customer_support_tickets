-- Resolution length based on ticket channel
    SELECT
        ticket_channel,
        COUNT(CASE WHEN hours_to_resolution >= 0 AND hours_to_resolution < 8 THEN 1 END) AS short,
        COUNT(CASE WHEN hours_to_resolution >= 8 AND hours_to_resolution < 16 THEN 1 END) AS medium,
        COUNT(CASE WHEN hours_to_resolution >= 16 THEN 1 END) AS long,
        COUNT(CASE WHEN hours_to_resolution >= 0 THEN 1 END) AS total
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


WITH res_length AS
    (SELECT
        ticket_channel,
        COUNT(CASE WHEN hours_to_resolution >= 0 AND hours_to_resolution < 8 THEN 1 END) AS short,
        COUNT(CASE WHEN hours_to_resolution >= 8 AND hours_to_resolution < 16 THEN 1 END) AS medium,
        COUNT(CASE WHEN hours_to_resolution >= 16 THEN 1 END) AS long,
        COUNT(CASE WHEN hours_to_resolution >= 0 THEN 1 END) AS total
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
    GROUP BY ticket_channel)

SELECT
    SUM(short) AS total_short,
    ROUND(SUM(short) / SUM(total) * 100, 2) percent_short,
    SUM(medium) AS total_medium,
    ROUND(SUM(medium) / SUM(total) * 100, 2) percent_medium,
    SUM(long) AS total_long,
    ROUND(SUM(long) / SUM(total) * 100, 2) percent_long,
    SUM(total) AS total_overall
FROM res_length

