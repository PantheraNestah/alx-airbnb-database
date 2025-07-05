SELECT 
  b.booking_id,
  b.start_date,
  b.end_date,
  b.total_price,
  b.status,

  -- User details
  u.user_id,
  u.first_name,
  u.last_name,
  u.email,

  -- Property details
  p.property_id,
  p.name AS property_name,
  p.location,
  p.pricepernight,

  -- Payment details
  pay.payment_id,
  pay.amount AS payment_amount,
  pay.payment_method

FROM Booking b
JOIN User u ON b.user_id = u.user_id
JOIN Property p ON b.property_id = p.property_id
LEFT JOIN Payment pay ON b.booking_id = pay.booking_id;


EXPLAIN ANALYZE
SELECT 
  b.booking_id,
  b.start_date,
  b.end_date,
  b.total_price,
  b.status,

  u.user_id,
  u.first_name,
  u.last_name,
  u.email,

  p.property_id,
  p.name AS property_name,
  p.location,
  p.pricepernight,

  pay.payment_id,
  pay.amount AS payment_amount,
  pay.payment_method

FROM Booking b
JOIN User u ON b.user_id = u.user_id
JOIN Property p ON b.property_id = p.property_id
LEFT JOIN Payment pay ON b.booking_id = pay.booking_id;

EXPLAIN ANALYZE
SELECT 
  b.booking_id,
  b.start_date,
  b.end_date,
  b.total_price,
  b.status,

  u.user_id,
  u.first_name,
  u.last_name,
  u.email,

  p.property_id,
  p.name AS property_name,
  p.location,
  p.pricepernight,

  pay.payment_id,
  pay.amount AS payment_amount,
  pay.payment_method

FROM Booking b
JOIN User u ON b.user_id = u.user_id
JOIN Property p ON b.property_id = p.property_id
LEFT JOIN Payment pay ON b.booking_id = pay.booking_id

WHERE u.first_name = 'Alice'
  AND b.status = 'confirmed';



SELECT 
  b.booking_id,
  b.start_date,
  b.end_date,
  b.total_price,
  b.status,

  u.first_name,
  u.last_name,
  u.email,

  p.name AS property_name,
  p.location,

  pay.amount AS payment_amount,
  pay.payment_method

FROM bookings b
-- Only select user fields you need
JOIN (
  SELECT user_id, first_name, last_name, email
  FROM users
) u ON b.user_id = u.user_id

-- Only select property fields you need
JOIN (
  SELECT property_id, name, location
  FROM properties
) p ON b.property_id = p.property_id

-- Use LEFT JOIN for optional payment info
LEFT JOIN (
  SELECT booking_id, amount, payment_method
  FROM payments
) pay ON b.booking_id = pay.booking_id;

