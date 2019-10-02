SELECT 
lname as имя, 
fname as фамилия,
sum(sum) as сумма 
FROM "договор"
INNER JOIN "клиенты" on "договор".id_client = "клиенты".id_client
GROUP BY lname, fname
HAVING sum("sum") > 10000000
