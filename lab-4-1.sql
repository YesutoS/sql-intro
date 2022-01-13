-- How many lifetime hits does Barry Bonds have?

-- Expected result:
-- 2935


select hits, count(*) from stats where player = "Barry Bonds";

--My solution (Correct)
select stats.id, players.first_name, players.last_name, sum(stats.hits)
from stats inner join players on stats.player_id = players.id
where players.first_name = "Barry" and players.last_name = "Bonds";

--His solution (Correct)
select sum(stats.hits)
from stats inner join players on players.id = stats.player_id
where first_name = "Barry"
and last_name = "Bonds";