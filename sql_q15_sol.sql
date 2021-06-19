
-- 15. Write a SQL query to find the referees who booked the most number of players.
WITH tt AS
	(SELECT COUNT(*) AS refbooks, referee_id
	 FROM match_mast
	 GROUP BY referee_id
	 ORDER BY refbooks DESC
	 LIMIT 1)

SELECT referee_name
FROM referee_mast rm
  INNER JOIN tt
  ON tt.referee_id = rm.referee_id;
 