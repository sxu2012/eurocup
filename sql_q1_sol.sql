-- 1. Write a SQL query to find the date EURO Cup 2016 started on.
SELECT play_date as EURO_Cup_Starting_Date
FROM match_mast
ORDER BY play_date
LIMIT 1;