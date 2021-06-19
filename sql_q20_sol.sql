
-- 20. Write a SQL query to find the substitute players who came into the field in the first
--     half of play, within a normal play schedule

SELECT player_name AS players_came_in_1st_half
FROM player_in_out as pio
  INNER JOIN player_mast AS pm
  ON pio.player_id = pm.player_id
WHERE in_out = 'I' AND play_schedule = 'NT' AND play_half = 1;

