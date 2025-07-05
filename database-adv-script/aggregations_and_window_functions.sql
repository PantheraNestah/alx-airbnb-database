SELECT 
    user_id,
    COUNT(booking_id) AS total_bookings
FROM Booking
GROUP BY user_id;