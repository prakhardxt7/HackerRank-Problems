-- MYSQL Solution
select distinct city from station where (city like '%a'
                            or city like '%e'
                            or city like '%i'
                            or city like '%o'
                            or city like '%u')
                            and
                            (city like 'a%'
                            or city like 'e%'
                            or city like 'i%'
                            or city like 'o%'
                            or city like 'u%');


-- MSSQL Server
select distinct city from station where city like '%[aeiou]'
                                    and city like '[aeiou]%';
