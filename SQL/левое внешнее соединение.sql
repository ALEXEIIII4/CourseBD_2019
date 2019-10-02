-- ГОРОД В КОТОРОМ НЕТ НИ ОДНОГО ФИЛИАЛА
SELECT 
city as "город", 
caption as "филиал"

FROM "город"
LEFT JOIN "филиал" on "филиал".id_city = "город".id_city
WHERE "филиал".id_city IS NULL
