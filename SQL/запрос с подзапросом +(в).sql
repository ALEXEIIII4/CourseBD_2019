--c) Определить количество клиентов привлеченных страховыми компаниями за указанный период (несколько лет) и доход по этим сделкам
SELECT
COUNT(*),
SUM(сумма)
FROM
(
SELECT id_client,
SUM(sum) as сумма
from "договор"
WHERE date BETWEEN now()-interval '2 month' AND now()
GROUP BY id_client
ORDER BY id_client
)as foo