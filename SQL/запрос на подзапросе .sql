SELECT city as город, 
(SELECT name FROM "страх.комп" WHERE id_city = "город".id_city LIMIT 1)
FROM "город"