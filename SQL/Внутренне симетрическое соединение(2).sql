SELECT
id_employee as id,
fname as имя,
lname as фамилия,
pname as отчество,
caption as название,
city as город,
"филиал".address as адрес,
"филиал".telephone as телефон,
"филиал".year as год,
amount as "кол.во сотрудников"

FROM "сотрудник"
NATURAL JOIN "филиал"
NATURAL JOIN "город"
