-- Check performance BEFORE indexing
EXPLAIN ANALYZE
SELECT * FROM bookings WHERE user_id = 42;

EXPLAIN ANALYZE
SELECT * FROM properties WHERE location = 'Lagos';

EXPLAIN ANALYZE
SELECT * FROM users WHERE email = 'user@example.com';


-- Create indexes to improve performance
CREATE INDEX idx_booking_user_id ON bookings(user_id);
CREATE INDEX idx_property_location ON properties(location);
CREATE INDEX idx_user_email ON users(email);


-- Check performance AFTER indexing
EXPLAIN ANALYZE
SELECT * FROM bookings WHERE user_id = 42;

EXPLAIN ANALYZE
SELECT * FROM properties WHERE location = 'Lagos';

EXPLAIN ANALYZE
SELECT * FROM users WHERE email = 'user@example.com';
