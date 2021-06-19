-- 7. Write a SQL query to find all the venues where matches with penalty shootouts were played
SELECT s.venue_name
FROM soccer_venue as s
  INNER JOIN match_mast as m
  ON s.venue_id = m.venue_id
WHERE m.decided_by = 'P';