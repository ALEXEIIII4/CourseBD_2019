--ВЫБРАТЬ ВСЕХ КЛИЕНТОВ
SELECT id_client as id,
fname as имя,
lname as фамилия,
pname as отчество,
date as дата,
state as "соц. положение",
city as город

FROM "клиенты"
INNER JOIN "социальные" ON "клиенты".id_state = "социальные".id_state
INNER JOIN "город" ON  "клиенты".id_city = "город".id_city