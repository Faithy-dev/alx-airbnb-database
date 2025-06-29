# alx-airbnb-database

# 🏠 Airbnb Clone — ER Diagram & Database Schema

## 📚 Overview

This document outlines the **Entity-Relationship (ER) diagram** and **database schema** used to model an Airbnb-style booking platform. It includes all major entities such as users, properties, bookings, payments, reviews, and messages.

---

## 📦 Entities and Attributes

### 🧍‍♀️ User

| Field           | Type       | Description                              |
|----------------|------------|------------------------------------------|
| `user_id`      | UUID (PK)  | Unique identifier                        |
| `first_name`   | VARCHAR    | First name                               |
| `last_name`    | VARCHAR    | Last name                                |
| `email`        | VARCHAR    | Unique email address                     |
| `password_hash`| VARCHAR    | Encrypted password                       |
| `phone_number` | VARCHAR    | Optional phone number                    |
| `role`         | ENUM       | guest, host, or admin                    |
| `created_at`   | TIMESTAMP  | Date account was created                 |

---

### 🏡 Property

| Field           | Type       | Description                              |
|----------------|------------|------------------------------------------|
| `property_id`  | UUID (PK)  | Unique property identifier               |
| `host_id`      | UUID (FK)  | References User (`user_id`)              |
| `name`         | VARCHAR    | Name of property                         |
| `description`  | TEXT       | Detailed description                     |
| `location`     | VARCHAR    | Property address/location                |
| `pricepernight`| DECIMAL    | Price per night                          |
| `created_at`   | TIMESTAMP  | Listing creation time                    |
| `updated_at`   | TIMESTAMP  | Last update timestamp                    |

---

### 📅 Booking

| Field           | Type       | Description                              |
|----------------|------------|------------------------------------------|
| `booking_id`   | UUID (PK)  | Unique booking identifier                |
| `property_id`  | UUID (FK)  | References Property (`property_id`)      |
| `user_id`      | UUID (FK)  | References User (`user_id`)              |
| `start_date`   | DATE       | Booking start date                       |
| `end_date`     | DATE       | Booking end date                         |
| `total_price`  | DECIMAL    | Total amount to be paid                  |
| `status`       | ENUM       | pending, confirmed, or canceled          |
| `created_at`   | TIMESTAMP  | Date booking was made                    |

---

### 💳 Payment

| Field           | Type       | Description                              |
|----------------|------------|------------------------------------------|
| `payment_id`   | UUID (PK)  | Unique payment identifier                |
| `booking_id`   | UUID (FK)  | References Booking (`booking_id`)        |
| `amount`       | DECIMAL    | Payment amount                           |
| `payment_date` | TIMESTAMP  | Date of payment                          |
| `payment_method`| ENUM      | credit_card, paypal, or stripe           |

---

### ⭐ Review

| Field           | Type       | Description                              |
|----------------|------------|------------------------------------------|
| `review_id`    | UUID (PK)  | Unique review identifier                 |
| `property_id`  | UUID (FK)  | References Property (`property_id`)      |
| `user_id`      | UUID (FK)  | References User (`user_id`)              |
| `rating`       | INTEGER    | Rating from 1 to 5                       |
| `comment`      | TEXT       | Text feedback                            |
| `created_at`   | TIMESTAMP  | Date review was left                     |

---

### 💬 Message

| Field           | Type       | Description                              |
|----------------|------------|------------------------------------------|
| `message_id`   | UUID (PK)  | Unique message identifier                |
| `sender_id`    | UUID (FK)  | Sender (references User `user_id`)       |
| `recipient_id` | UUID (FK)  | Receiver (references User `user_id`)     |
| `message_body` | TEXT       | Message content                          |
| `sent_at`      | TIMESTAMP  | Date and time sent                       |

---

## 🔁 Relationships

- **User → Property**: One-to-many (A host can list multiple properties)
- **User → Booking**: One-to-many (A guest can make multiple bookings)
- **User → Review**: One-to-many (Users can leave multiple reviews)
- **User → Message**: One-to-many (Each user can send/receive messages)
- **Property → Booking**: One-to-many (Properties can be booked multiple times)
- **Property → Review**: One-to-many (Properties can receive multiple reviews)
- **Booking → Payment**: One-to-one (Each booking has one payment)

---

## 🔐 Constraints & Indexes

- **Users**: Unique constraint on `email`
- **Reviews**: Rating must be between 1 and 5
- **Booking status**: Must be one of (`pending`, `confirmed`, `canceled`)
- **All foreign keys**: Enforced via relational constraints
- **Indexed fields**: All primary keys + `email`, `property_id`, `booking_id`

---

## 🖼 ER Diagram

> ![ER Diagram](https://github.com/Faithy-dev/alx-airbnb-database/blob/main/airbnb_er_diagram.png)


