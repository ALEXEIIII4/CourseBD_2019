SELECT COUNT(*) FROM "договор"
WHERE договор.sum > 50000
--HAVING sum > avg(sum)