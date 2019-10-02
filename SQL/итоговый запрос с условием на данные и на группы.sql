SELECT 
lname as фамилия, 
fname as имя,
sum(sum) as сумма 
FROM "договор"
INNER JOIN "клиенты" on "договор".id_client = "клиенты".id_client
WHERE "договор"."date" > now()  - interval'1 month'
GROUP BY lname, fname
HAVING sum("sum") > 50000