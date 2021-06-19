-- 4. Write a SQL query to compute a list showing the number of substitutions that
--    happened in various stages of play for the entire tournament.
SELECT COUNT(*), play_schedule
FROM player_in_out
WHERE in_out = 'O'
GROUP BY play_schedule;