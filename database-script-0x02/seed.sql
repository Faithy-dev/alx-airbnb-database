-- seed.sql

-- USERS
INSERT INTO users (id, first_name, last_name, email, password)
VALUES
  ('a1111111-aaaa-bbbb-cccc-111111111111', 'Alice', 'Johnson', 'alice@example.com', 'hashed_password1'),
  ('a2222222-aaaa-bbbb-cccc-222222222222', 'Bob', 'Smith', 'bob@example.com', 'hashed_password2'),
  ('a3333333-aaaa-bbbb-cccc-333333333333', 'Charlie', 'Lee', 'charlie@example.com', 'hashed_password3');

-- PLACES
INSERT INTO places (id, name, description, address, city, price_per_night, max_guests, num_rooms, num_bathrooms, owner_id)
VALUES
  ('p1111111-aaaa-bbbb-cccc-111111111111', 'Cozy Apartment', 'A cozy place near the city center', '123 Main St', 'Lagos', 50.00, 2, 1, 1, 'a1111111-aaaa-bbbb-cccc-111111111111'),
  ('p2222222-aaaa-bbbb-cccc-222222222222', 'Beach House', 'Ocean view and great vibes', '456 Beach Rd', 'Accra', 150.00, 6, 3, 2, 'a2222222-aaaa-bbbb-cccc-222222222222'),
  ('p3333333-aaaa-bbbb-cccc-333333333333', 'Modern Loft', 'Stylish downtown loft', '789 Skyline Ave', 'Nairobi', 100.00, 4, 2, 2, 'a3333333-aaaa-bbbb-cccc-333333333333');

-- REVIEWS
INSERT INTO reviews (id, user_id, place_id, rating, comment)
VALUES
  ('r1111111-aaaa-bbbb-cccc-111111111111', 'a2222222-aaaa-bbbb-cccc-222222222222', 'p1111111-aaaa-bbbb-cccc-111111111111', 5, 'Loved it! Clean and quiet.'),
  ('r2222222-aaaa-bbbb-cccc-222222222222', 'a3333333-aaaa-bbbb-cccc-333333333333', 'p2222222-aaaa-bbbb-cccc-222222222222', 4, 'Amazing view but a bit far from the center.'),
  ('r3333333-aaaa-bbbb-cccc-333333333333', 'a1111111-aaaa-bbbb-cccc-111111111111', 'p3333333-aaaa-bbbb-cccc-333333333333', 5, 'Perfect location and amenities!');
