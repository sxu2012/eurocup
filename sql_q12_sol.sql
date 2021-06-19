-- 12. Write a SQL query that returns the total number of goals scored by each position on
--     each country’s team. Do not include positions which scored no goals.
WITH tt AS
  ( 
  SELECT posi_to_play, player_mast.team_id
  FROM player_mast
  INNER JOIN goal_details
  ON player_mast.player_id = goal_details.player_id
  )
SELECT COUNT(*) as total_goals, tt.posi_to_play, country_abbr
FROM soccer_country
  INNER JOIN tt
  ON tt.team_id = country_id
GROUP BY tt.posi_to_play, country_abbr;
