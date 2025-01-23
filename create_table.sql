CREATE TABLE support_tickets (
    ticket_id INT,
    customer_name VARCHAR(255),
    customer_email VARCHAR(255),
    customer_age INT,
    customer_gender VARCHAR(255),
    product_purchased VARCHAR(255),
    date_of_purchase DATE,
    ticket_type VARCHAR(255),
    ticket_subject VARCHAR(255),
    ticket_description TEXT,
    ticket_status VARCHAR(255),
    resolution TEXT,
    ticket_priority VARCHAR(255),
    ticket_channel VARCHAR(255),
    first_response_time TIMESTAMP,
    time_to_resolution TIMESTAMP,
    customer_satisfaction_rating INT
);

ALTER TABLE support_tickets ALTER COLUMN customer_satisfaction_rating TYPE NUMERIC;