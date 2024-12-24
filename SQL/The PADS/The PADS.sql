-- Method 1
with cte as(select name,occupation,concat('(',left(occupation,1),')') as pref,count(*) over(partition by occupation) as cnt from occupations)
select concat(name,pref) as fst from cte 
union
select concat('There are a total of ',cnt,' ',lower(occupation),'s.') as lsr from cte
group by occupation,cnt
order by fst;


-- Method 2
SELECT CONCAT(name, "(", SUBSTR(occupation, 1 , 1),")") FROM occupations
ORDER BY name;

SELECT CONCAT("There are a total of ", COUNT(name), " ", LOWER(occupation), "s.")
FROM occupations
GROUP BY occupation
ORDER BY COUNT(name), occupation;
