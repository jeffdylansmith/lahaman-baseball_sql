--8. Using the attendance figures from the homegames table, find the teams and parks which had the top 5 average attendance per game in 
-- 2016 (where average attendance is defined as total attendance divided by number of games).  
-- Only consider parks where there were at least 10 games played. Report the park name, team name, and average attendance. 
-- Repeat for the lowest 5 average attendance.

select p.park_name,  t.name , (hg.attendance / hg.games) as avgattendance 
FRom homegames hg
LEft join teams t on t.teamid = hg.team and t.yearid = 2016
left join parks p on p.park = hg.park
where year = 2016
AND hg.games >= 10
order by avgattendance desc
limit 5 

select p.park_name,  t.name , (hg.attendance / hg.games) as avgattendance 
FRom homegames hg
LEft join teams t on t.teamid = hg.team and t.yearid = 2016
left join parks p on p.park = hg.park
where year = 2016
AND hg.games >= 10
order by avgattendance
limit 5