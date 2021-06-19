-- 14. Write a SQL query to find referees and the number of bookings they made for the
--     entire tournament. Sort your answer by the number of bookings in descending order.

SELECT COUNT(*) as number_of_bookings, rm.referee_name
FROM referee_mast as rm
  INNER JOIN match_mast as mm
  ON rm.referee_id = mm.referee_id
GROUP BY rm.referee_id
ORDER BY number_of_bookings DESC