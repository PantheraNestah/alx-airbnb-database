CREATE TABLE bookings (
    booking_id UUID PRIMARY KEY DEFAULT uuid_generate_v4(),
    property_id UUID NOT NULL,
    user_id UUID NOT NULL,
    start_date DATE NOT NULL,
    end_date DATE NOT NULL,
    total_price NUMERIC(10, 2),
    status VARCHAR(20),
    created_at TIMESTAMP DEFAULT CURRENT_TIMESTAMP,
    updated_at TIMESTAMP DEFAULT CURRENT_TIMESTAMP,

    CONSTRAINT fk_property FOREIGN KEY (property_id) REFERENCES properties(property_id),
    CONSTRAINT fk_user FOREIGN KEY (user_id) REFERENCES users(user_id)
)
PARTITION BY RANGE (start_date);


-- 2024 Partitions
CREATE TABLE bookings_2024_h1 PARTITION OF bookings
FOR VALUES FROM ('2024-01-01') TO ('2024-07-01');

CREATE TABLE bookings_2024_h2 PARTITION OF bookings
FOR VALUES FROM ('2024-07-01') TO ('2025-01-01');

-- 2025 Partitions
CREATE TABLE bookings_2025_h1 PARTITION OF bookings
FOR VALUES FROM ('2025-01-01') TO ('2025-07-01');

CREATE TABLE bookings_2025_h2 PARTITION OF bookings
FOR VALUES FROM ('2025-07-01') TO ('2026-01-01');
