SELECT Property.property_id, Property.name
FROM Property
WHERE Property.property_id = (
    SELECT Review.property_id
    FROM Review
    GROUP BY Review.property_id
    HAVING AVG(Review.rating) > 4.0
);

SELECT User.user_id, User.first_name, User.last_name
FROM User
WHERE EXISTS (
    SELECT 1
    FROM Booking
    WHERE Booking.user_id=User.user_id
    GROUP BY Booking.user_id
    HAVING COUNT(Booking.booking_id) > 3
);