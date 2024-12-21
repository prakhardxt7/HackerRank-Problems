-- MYSQL
SELECT DISTINCT city 
FROM station 
WHERE city NOT LIKE 'a%'
  AND city NOT LIKE 'e%'
  AND city NOT LIKE 'i%'
  AND city NOT LIKE 'o%'
  AND city NOT LIKE 'u%';


-- MSSQL Server
select distinct city from station where city like '[^aeiou]%'