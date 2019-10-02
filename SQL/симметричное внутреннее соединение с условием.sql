SELECT
id_contract as контракт,
sum as сумма,
"договор".date as дата,
text as текст,
variant as виды,
"клиенты".fname as "имя клиента",
"клиенты".lname as "фамилия клиента",
"клиенты".pname as "отчество клиента"

FROM "договор"
NATURAL JOIN "виды"
NATURAL JOIN "сотрудник"
INNER JOIN "клиенты" ON "договор".id_client = "клиенты".id_client
WHERE variant = 'основной'