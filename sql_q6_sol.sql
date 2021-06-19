-- 6. Write a SQL query to find the number of matches that were won by a single point, but
--    do not include matches decided by penalty shootout.
SELECT COUNT(*) as number_of_matches_won_by_1pt
FROM match_details
WHERE goal_score = 1
  AND win_lose = 'W'
  AND decided_by = 'N';