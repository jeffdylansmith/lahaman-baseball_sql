--5. Find the average number of strikeouts per game by decade since 1920. 
-- Round the numbers you report to 2 decimal places. Do the same for home runs per game. Do you see any trends?

Select date_trunc('decade', make_date(yearid, 1, 1)) as decade
      , round(avg(so),2 )
FRom batting 
where yearid >= 1920
group by decade
order by decade