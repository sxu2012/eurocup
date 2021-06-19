
-- 18. Write a SQL query to find the highest number of foul cards given in one match.
SELECT COUNT(*) as highest_number_of_fouls
FROM penalty_gk AS pg
  INNER JOIN match_mast AS mm
  ON pg.match_no = mm.match_no
GROUP BY pg.match_no
ORDER BY highest_number_of_fouls DESC
LIMIT 1