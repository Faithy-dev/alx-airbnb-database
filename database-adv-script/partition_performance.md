# Partition Performance Report

## Objective

Optimize queries on the large `bookings` table by implementing **range-based partitioning** using the `start_date` column.

## Implementation

- The original `bookings` table was renamed to `bookings_original`.
- A new `bookings` table was created with **RANGE partitioning** on the `start_date`.
- Separate partition tables were created for years 2023, 2024, and 2025.
- The query performance was tested using `EXPLAIN ANALYZE` on a filtered date range.

## Results

- **Before partitioning**: The query scanned the entire bookings table.
- **After partitioning**: The query only scanned the relevant partition (e.g., `bookings_2024`).
- This reduced I/O and improved response time, especially on large datasets.

## Conclusion

Partitioning on `start_date` significantly improved the performance of date-based queries. This is especially beneficial for large datasets where full-table scans are costly.

