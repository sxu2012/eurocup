
-- 16. Write a SQL query to find referees and the number of matches they worked in each venue.
WITH tt AS
	(SELECT COUNT(*) AS number_of_matches, referee_id, venue_id
	 FROM match_mast
	 GROUP BY venue_id, referee_id
     )

SELECT rm.referee_name, sv.venue_name, tt.number_of_matches
FROM referee_mast rm
  INNER JOIN tt
  ON tt.referee_id = rm.referee_id
  INNER JOIN soccer_venue sv
  ON tt.venue_id = sv.venue_id;
