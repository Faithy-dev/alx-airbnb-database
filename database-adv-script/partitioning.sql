-- Step 1: Rename the original Booking table
ALTER TABLE bookings RENAME TO bookings_original;

-- Step 2: Create a new partitioned bookings table
CREATE TABLE bookings (
    id SERIAL PRIMARY KEY,
    user_id INT NOT NULL,
    property_id INT NOT NULL,
    start_date DATE NOT NULL,
    end_date DATE NOT NULL,
    created_at TIMESTAMP DEFAULT CURRENT_TIMESTAMP
) PARTITION BY RANGE (start_date);

-- Step 3: Create partitions by year
CREATE TABLE bookings_2023 PARTITION OF bookings
    FOR VALUES FROM ('2023-01-01') TO ('2024-01-01');

CREATE TABLE bookings_2024 PARTITION OF bookings
    FOR VALUES FROM ('2024-01-01') TO ('2025-01-01');

CREATE TABLE bookings_2025 PARTITION OF bookings
    FOR VALUES FROM ('2025-01-01') TO ('2026-01-01');

-- Step 4: (Optional) Insert existing data into new partitioned structure
-- You can adapt this part or use ETL methods to migrate old data
-- INSERT INTO bookings (...) SELECT ... FROM bookings_original;

-- Step 5: Test performance with EXPLAIN ANALYZE on a partitioned query
EXPLAIN ANALYZE
SELECT * FROM bookings
WHERE start_date BETWEEN '2024-06-01' AND '2024-06-30';
