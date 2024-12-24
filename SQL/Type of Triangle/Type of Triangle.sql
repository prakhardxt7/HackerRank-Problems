select 
case when a+b<=c or a+c<=b or b+c<=a then 'Not A Triangle'
     when a=b and b=c then 'Equilateral'
     when a=b or b=c or a=c then 'Isosceles'
    else 'Scalene' 
    end as trg
from triangles;
