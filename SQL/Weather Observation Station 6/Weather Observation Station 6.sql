-- My SQL Solution
select city from station where city like 'a%'
                            or city like 'e%'
                            or city like 'i%'
                            or city like 'o%'
                            or city like 'u%';


-- MSSQL Server
select city from station where city like '[aeiou]%';
