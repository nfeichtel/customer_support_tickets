SELECT 
    ticket_status,
    COUNT(*),
    ROUND(COUNT(*) / (SELECT COUNT(ticket_status)::numeric FROM support_tickets) * 100, 2) AS percent_status
FROM support_tickets
GROUP BY ticket_status;

SELECT 
    ticket_channel,
    COUNT(*),
    ROUND(COUNT(*) / (SELECT COUNT(ticket_status)::numeric FROM support_tickets) * 100, 2) AS percent_status
FROM support_tickets
GROUP BY ticket_channel;

SELECT 
    ticket_type,
    COUNT(*),
    ROUND(COUNT(*) / (SELECT COUNT(ticket_status)::numeric FROM support_tickets) * 100, 2) AS percent_status
FROM support_tickets
GROUP BY ticket_type;


SELECT
    ticket_type,
    ticket_channel,
    COUNT(*),
    ROUND(COUNT(*) / (SELECT COUNT(ticket_status)::numeric FROM support_tickets) * 100, 2) AS percent_status
FROM support_tickets
GROUP BY 
    ticket_type,
    ticket_channel
ORDER BY
    ticket_channel;
