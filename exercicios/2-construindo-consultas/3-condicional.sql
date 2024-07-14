-- Escreva uma consulta que retorne o nome por extenso dos estados brasileiros

SELECT DISTINCT
Country AS pais,
State AS estado_sigla,
CASE
  WHEN State = 'SP' THEN 'São Paulo'
  WHEN State = 'RJ' THEN 'Rio de Janeiro'
  ELSE 'Estado desconhecido'
END AS estado
FROM 
customers
WHERE
Country LIKE 'Brazil';