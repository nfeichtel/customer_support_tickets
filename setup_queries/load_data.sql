COPY support_tickets
FROM '/Users/nickfeichtel/Desktop/Portfolio_Projects/customer_support_tickets/customer_support_tickets.csv'
DELIMITER ',' CSV HEADER;
/*
\copy support_tickets FROM '/Users/nickfeichtel/Desktop/Portfolio_Projects/customer_support_tickets/customer_support_tickets.csv' WITH (FORMAT csv, HEADER true, DELIMITER ',', ENCODING 'UTF8');
*/