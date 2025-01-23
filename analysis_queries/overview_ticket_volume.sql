SELECT 
    ticket_status,
    COUNT(*),
    ROUND(COUNT(*) / (SELECT COUNT(ticket_status)::numeric FROM support_tickets) * 100, 2) AS percent_status
FROM support_tickets
GROUP BY ticket_status