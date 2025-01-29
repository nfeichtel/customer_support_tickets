SELECT
     support_tickets.*,
     ROUND(EXTRACT(EPOCH FROM time_to_resolution - first_response_time) / 3600, 2) AS hours_to_resolution
FROM support_tickets