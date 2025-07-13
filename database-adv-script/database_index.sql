-- Indexes on User table
CREATE INDEX idx_user_email ON users(email);
CREATE INDEX idx_user_last_name ON users(last_name);

-- Indexes on Booking table
CREATE INDEX idx_booking_user_id ON bookings(user_id);
CREATE INDEX idx_booking_property_id ON bookings(property_id);
CREATE INDEX idx_booking_booking_date ON bookings(booking_date);

-- Indexes on Property table
CREATE INDEX idx_property_owner_id ON properties(owner_id);
CREATE INDEX idx_property_location ON properties(location);
