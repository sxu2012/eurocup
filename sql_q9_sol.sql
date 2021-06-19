-- 9. Write a SQL query to find the goalkeeper’s name and jersey number, playing for
--    Germany, who played in Germany’s group stage matches.
 WITH tt AS
   (SELECT player_gk
			   FROM match_details
                 INNER JOIN soccer_country
                 ON country_id = team_id
			   WHERE country_abbr = 'GER'
                 AND play_stage = 'G')
SELECT DISTINCT mp.player_name, mp.jersey_no
FROM player_mast as mp
  INNER JOIN tt
  ON tt.player_gk = mp.player_id;