SELECT
fname as имя, 
lname as фамилия

FROM "договор"
RIGHT JOIN "сотрудник" ON "договор".id_employee = "сотрудник".id_employee
WHERE id_contract IS NULL