-- 13. Write a SQL query to find all the defenders who scored a goal for their teams.
SELECT DISTINCT pm.player_name as defenders_scored
FROM player_mast as pm
  INNER JOIN goal_details as gd
  ON pm.player_id = gd.player_id
WHERE pm.posi_to_play = 'DF';