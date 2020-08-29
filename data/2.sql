--2. Find the name and height of the shortest player in the database. 
--How many games did he play in? What is the name of the team for which he played?

select CONCAT(p.namefirst, ' ', p.namelast) as playerName
	   ,t.name as teamName
	   ,count(a.lgid) as appearances 
from people p
left join appearances a on a.playerid = p.playerid
left join teams t on a.teamid = t.teamid
where p.height = (SELECT min(height) from people)
group by t.name, p.namefirst, p.namelast





