# Performance Monitoring Report

## Objective

Continuously monitor and refine database performance by analyzing query execution plans and making schema adjustments.

---

## 1. Tools Used

- `EXPLAIN ANALYZE` (PostgreSQL)  
- `SHOW PROFILE` (MySQL) — not supported in PostgreSQL  
- `pg_stat_statements` (PostgreSQL extension — optional)

---

## 2. Query Monitored

### Sample Query

```sql
SELECT b.id, u.name, p.name
FROM bookings b
JOIN users u ON b.user_id = u.id
JOIN properties p ON b.property_id = p.id
WHERE b.start_date BETWEEN '2024-06-01' AND '2024-06-30'
ORDER BY b.start_date DESC;
