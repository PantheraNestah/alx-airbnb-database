CREATE INDEX idx_user_name 
ON User (first_name, last_name);

CREATE INDEX idx_booking_id 
ON Booking (booking_id);

CREATE INDEX idx_property_id 
ON Property (property_id);