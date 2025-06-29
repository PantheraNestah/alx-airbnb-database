-- Enable UUID extension
CREATE EXTENSION IF NOT EXISTS "uuid-ossp";

-- Clear existing data (respecting foreign key constraints)
TRUNCATE messages, reviews, payments, bookings, properties, users RESTART IDENTITY CASCADE;

-- Insert Users
INSERT INTO users (user_id, first_name, last_name, email, password_hash, phone_number, role)
VALUES 
  (uuid_generate_v4(), 'Daniel', 'Mwangi', 'daniel@example.com', 'hashed_pw_daniel', '0790123456', 'host'),
  (uuid_generate_v4(), 'Eva', 'Kimani', 'eva@example.com', 'hashed_pw_eva', NULL, 'guest'),
  (uuid_generate_v4(), 'Frank', 'Barasa', 'frank@example.com', 'hashed_pw_frank', '0745678910', 'guest'),
  (uuid_generate_v4(), 'Super', 'Admin', 'superadmin@example.com', 'hashed_pw_superadmin', NULL, 'admin');

-- Insert Properties (owned by Daniel)
INSERT INTO properties (property_id, host_id, name, description, location, pricepernight)
VALUES 
  (
    'aaaaaaa1-aaaa-aaaa-aaaa-aaaaaaaaaaaa',
    (SELECT user_id FROM users WHERE email = 'daniel@example.com'),
    'Mountain Retreat',
    'Peaceful cabin near Mt. Kenya National Park.',
    'Nanyuki, Kenya',
    120.00
  ),
  (
    'bbbbbbb2-bbbb-bbbb-bbbb-bbbbbbbbbbbb',
    (SELECT user_id FROM users WHERE email = 'daniel@example.com'),
    'Kisumu Lakehouse',
    'Spacious home with a view of Lake Victoria.',
    'Kisumu, Kenya',
    95.00
  );

-- Insert Bookings
INSERT INTO bookings (booking_id, property_id, user_id, start_date, end_date, total_price, status)
VALUES
  (
    'ccccccc3-cccc-cccc-cccc-cccccccccccc',
    'aaaaaaa1-aaaa-aaaa-aaaa-aaaaaaaaaaaa',
    (SELECT user_id FROM users_
