
-- 19. Write a SQL query to find the number of captains who were also goalkeepers.

SELECT COUNT(*) AS number_of_captains_also_goalkeepers
FROM match_captain mc
  INNER JOIN match_details md
  ON mc.player_captain = md.player_gk
