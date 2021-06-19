
-- 17. Write a SQL query to find the country where the most assistant referees come from,
--     and the count of the assistant referees.
SELECT sc.country_name, COUNT(*) as number_of_assistant_referees
FROM asst_referee_mast arm
INNER JOIN soccer_country sc
on sc.country_id = arm.country_id
GROUP BY sc.country_id;