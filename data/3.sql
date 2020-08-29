--3.Find all players in the database who played at Vanderbilt University. 
--Create a list showing each player’s first and last names as well as the total salary they earned in the major leagues. 
--Sort this list in descending order by the total salary earned. 
--Which Vanderbilt player earned the most money in the majors?

Select Distinct(cp.playerid), concat(p.namefirst, ' ', p.namelast) as playerName 
	  , a.teamid as teamId, a.yearid, t.name
	  -- ,cp.* 
	   --,t.name as teamName
FROM collegeplaying cp
LEFT join people p on p.playerid = cp.playerid
left join appearances a on a.playerid = p.playerid
left join teams t on t.teamid = a.teamid and a.lgid = t.lgid
where schoolid = (Select schoolid from schools
				   where schoolname like 'Vanderbilt%')
order by playerName, teamId