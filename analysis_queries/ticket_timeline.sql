SELECT
    MIN(first_response_time) AS first_ticket_time,
    MAX(first_response_time) AS last_ticket_time,
    ROUND(EXTRACT(EPOCH FROM MAX(first_response_time) - MIN(first_response_time)) / 3600, 2) AS ticket_timeline
FROM support_tickets