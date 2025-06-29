# 🧮 Database Normalization — Airbnb Clone

## ✅ Objective

Ensure that the Airbnb database schema is normalized to **Third Normal Form (3NF)** to eliminate redundancy, improve integrity, and simplify maintenance.

---

## 🧩 First Normal Form (1NF)

- ✔ All attributes contain **atomic values**.
- ✔ No repeating groups or arrays.
- ✔ Each column contains a single value of the correct data type.

**✅ Passed** — All tables follow 1NF.

---

## 🔄 Second Normal Form (2NF)

- ✔ Already in 1NF.
- ✔ No **partial dependencies** — all non-key attributes depend on the full primary key.

**Note**: No table has a composite key, so 2NF is automatically satisfied.

**✅ Passed** — Schema complies with 2NF.

---

## 🔁 Third Normal Form (3NF)

- ✔ Already in 2NF.
- ✔ No **transitive dependencies** — non-key attributes depend only on the primary key.

**Validation by Table:**

### 🧍 User
- All fields (email, role, phone, etc.) depend only on `user_id`.
- No transitive dependencies.
✅ **In 3NF**

### 🏠 Property
- Depends only on `property_id`.
- `host_id` is a FK to User.
✅ **In 3NF**

### 📅 Booking
- All fields depend on `booking_id` alone.
- `property_id`, `user_id` are FKs.
✅ **In 3NF**

### 💳 Payment
- All fields depend on `payment_id`.
- `booking_id` is a FK, but no transitive dependency on payment_method or amount.
✅ **In 3NF**

### 🌟 Review
- All fields depend on `review_id`.
- `rating` is scalar and valid (1-5).
✅ **In 3NF**

### 💬 Message
- All fields depend on `message_id`.
- `sender_id` and `recipient_id` are both FKs to `User`.
✅ **In 3NF**

---

## 🧹 No Changes Required

After analysis, all entities are:
- In 1NF (atomic)
- In 2NF (no partial dependency)
- In 3NF (no transitive dependency)

📦 **Final Verdict:**  
✅ The schema is properly normalized to **Third Normal Form (3NF)**

---

## 📎 Notes

- Redundant attributes such as calculated `total_price` can be allowed for performance, but not required for 3NF compliance.
- ENUM fields (like `role`, `status`, `payment_method`) are denormalized for simplicity — acceptable in small schemas.


