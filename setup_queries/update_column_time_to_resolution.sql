-- Data cleaning. Correcting the time_to_resolution column where it is before the first_response_time
UPDATE support_tickets
SET time_to_resolution = time_to_resolution + INTERVAL '1' day
WHERE time_to_resolution < first_response_time