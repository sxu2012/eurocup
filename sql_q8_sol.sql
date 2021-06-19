-- 8. Write a SQL query to find the match number for the game with the highest number of
--    penalty shots, and which countries played that match.
SELECT m.match_no, s.country_name
FROM soccer_country as s
  INNER JOIN match_details as m
  ON s.country_id = m.team_id
ORDER BY m.penalty_score DESC
LIMIT 1;