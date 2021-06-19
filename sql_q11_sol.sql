-- 11. Write a SQL query to find the players, their jersey number, and playing club who were
--     the goalkeepers for England in EURO Cup 2016.

SELECT player_name, jersey_no, playing_club
FROM player_mast
  INNER JOIN soccer_country
  ON team_id = country_id
     AND country_abbr = 'ENG'
WHERE posi_to_play = 'GK';