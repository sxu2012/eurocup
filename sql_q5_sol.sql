-- 5. Write a SQL query to find the number of bookings that happened in stoppage time.
SELECT COUNT(*) as stoppage_bookings
FROM player_booked
WHERE play_schedule = 'ST'