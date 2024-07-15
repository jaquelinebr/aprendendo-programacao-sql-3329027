-- Crie uma consulta que retorne as colunas CustomerId, FirstName, LastName e Address das pessoas consumidoras brasileiras

SELECT DISTINCT
CustomerId AS id,
FirstName AS nome,
LastName AS sobrenome,
Address AS endereço
FROM customers
WHERE 
Country LIKE 'Brazil';

-- Na consulta anterior, converta o sobrenome para letras maiúsculas

SELECT DISTINCT
CustomerId AS id,
FirstName AS nome,
UPPER (LastName) AS sobrenome,
Address AS endereço
FROM customers
WHERE 
Country LIKE 'Brazil';

-- Na consulta anterior, converta o nome para letras minúsculas

SELECT DISTINCT
CustomerId AS id,
lOWER (FirstName) AS nome,
UPPER (LastName) AS sobrenome,
Address AS endereço
FROM customers
WHERE 
Country LIKE 'Brazil';

-- Na consulta anterior, adicione uma coluna cujos os dados seja o resultado da concatenação das colunas de nome e sobrenome

SELECT DISTINCT
CustomerId AS id,
LOWER (FirstName) as nome,
UPPER (LastName) as sobrenome,
Firstname || ' ' || Lastname as nome_completo,
Address as endereco
FROM customers
WHERE 
Country LIKE 'Brazil';

-- Na consulta anterior, substitua "Av." por "Avenida" na coluna endereço

SELECT DISTINCT
CustomerId AS id,
SUBSTR(FirstName,1,3) as apelido,
LOWER (FirstName) AS nome,
UPPER (LastName) AS sobrenome,
LOWER(Firstname || ' ' || Lastname) as nome_completo,
REPLACE (Address, 'Av.', 'Avenida') AS endereco
FROM customers
WHERE 
Country LIKE 'Brazil';

-- Na consulta anterior, utilize o símbolo de coringa para construir padrões textuais

SELECT DISTINCT
CustomerId AS id,
SUBSTR(FirstName,1,3) as apelido,
LOWER (FirstName) AS nome,
UPPER (LastName) AS sobrenome,
LOWER(Firstname || ' ' || Lastname) as nome_completo,
REPLACE (Address, 'Av.', 'Avenida') AS endereco
FROM customers
WHERE 
Country LIKE 'Bra%';