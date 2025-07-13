-- 1. INNER JOIN: Retrieve all bookings and the respective users who made those bookings
SELECT bookings.id AS booking_id, bookings.property_id, bookings.start_date, bookings.end_date,
       users.id AS user_id, users.first_name, users.last_name, users.email
FROM bookings
INNER JOIN users ON bookings.user_id = users.id;


-- 2. LEFT JOIN: Retrieve all properties and their reviews, including properties with no reviews
SELECT
  p.id AS property_id,
  p.name AS property_name,
  r.id AS review_id,
  r.comment,
  r.rating
FROM properties p
LEFT JOIN reviews r ON p.id = r.property_id
ORDER BY p.id;


-- 3. FULL OUTER JOIN: Retrieve all users and all bookings, even if the user has no booking or booking is not linked to a user
SELECT users.id AS user_id, users.first_name, users.last_name, users.email,
       bookings.id AS booking_id, bookings.property_id, bookings.start_date, bookings.end_date
FROM users
FULL OUTER JOIN bookings ON users.id = bookings.user_id;

