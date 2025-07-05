CREATE INDEX idx_user_name 
ON User (first_name, last_name);

CREATE INDEX idx_booking_id 
ON Booking (booking_id);

CREATE INDEX idx_property_id 
ON Property (property_id);


EXPLAIN ANALYZE
SELECT 
  b.booking_id,
  u.first_name,
  u.last_name,
  p.name AS property_name
FROM bookings b
JOIN users u ON b.user_id = u.user_id
JOIN properties p ON b.property_id = p.property_id
WHERE u.first_name = 'Alice' AND u.last_name = 'Johnson';