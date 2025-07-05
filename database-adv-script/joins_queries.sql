SELECT User.user_id, User.first_name, User.last_name, Booking.booking_id, Booking.property_id, Booking.start_date, Booking.end_date
FROM User
INNER JOIN Booking ON User.user_id = Booking.user_id;

SELECT Property.property_id, Property.name, Review.rating, Review.comment
FROM Property
LEFT JOIN Review ON Property.property_id = Review.property_id
ORDER BY Property.property_id;

SELECT User.user_id, User.first_name, User.last_name, Booking.booking_id, Booking.property_id, Booking.start_date, Booking.end_date
FROM User
FULL OUTER JOIN Booking ON User.user_id = Booking.user_id;
