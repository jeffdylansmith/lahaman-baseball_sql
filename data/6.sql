--6. Find the player who had the most success stealing bases in 2016, where success is measured as the percentage of stolen base attempts which are successful. 
-- (A stolen base attempt results either in a stolen base or being caught stealing.) 
-- Consider only players who attempted at least 20 stolen bases.

Select concat(p.namefirst , ' ' , p.namelast) as playerName      
      ,Round((cast(b.cs as decimal) / cast(b.sb as decimal)) * 100, 2 )as successful
FROM batting b
inner join people p on p.playerid = b.playerid
where b.sb > 20 
AND b.yearid = 2016
group by b.playerid, p.namefirst, p.namelast, b.cs, b.sb
order by successful desc
limit 1
