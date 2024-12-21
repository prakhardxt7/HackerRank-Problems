with cte as(select id,name,marks,right(name,3) as subs from students)
select name from cte 
          where marks>75 
          order by subs,id;
