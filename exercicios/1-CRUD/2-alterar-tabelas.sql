-- Na tabela salario_classe altere o atributo "nivel" para que seu tipo de dado seja varchar, com tamanho máximo de 50 caracteres:

ALTER TABLE salario_classe
DROP salario;
-- run selected query (apaga a tabela salario)

ALTER TABLE salario_classe
ADD salario varchar(50); -- recria a tabela salario com um limite de 50 caracteres)

-- Na tabela employees, adicione uma coluna para receber o id_salario:

ALTER TABLE employees
ADD id_salario INTEGER; --  id_salario seria uma chave estrangeira pse já existisse essa coluna na tabela salario_classe onde temos a chave primaria id
