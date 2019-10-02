SELECT DISTINCT
lname as фамилия,
fname as имя,
( SELECT round (avg(sum), 2) FROM "договор") as среднее
FROM "договор"
INNER JOIN "клиенты" on "договор".id_client = "клиенты".id_client