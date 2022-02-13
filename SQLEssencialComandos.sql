-- EXEMPLO DE SELECT E FROM ------------------------------------------------------
SELECT * --Selecionar dados da tabela informada no FROM, * = tudo
FROM tbCliente --Tabela da qual se deseja buscar os dados

SELECT Nome --Outro exemplo de SELECT, desta vez buscando uma única coluna
FROM tbCliente

SELECT *
FROM tbPedido 

SELECT *
FROM tbProduto 



-- EXEMPLO COM JOIN ---------------------------------------------------------------
SELECT * --Neste caso o * traz as colunas de forma duplicada
FROM tbPedido --Na tabela pedidos
JOIN tbCliente --Juntar os dados
ON
tbPedido.IdCliente=tbCliente.IdCliente --Dados que estejam contidos nas duas tabelas
JOIN tbProduto
ON
tbPedido.IdPedido=tbProduto.IdProduto --Unindo as três tabelas

SELECT --Na configuração abaixo, mostra somente as colunas solicitadas de cada tabela
tbPedido.IdPedido,
tbPedido.IdProduto,
tbProduto.DescricaoProduto,
tbPedido.IdCliente,
tbCliente.Nome,
tbPedido.Quantidade,
tbPedido.Valor --Essa última linha não tem vírgula para dar continuidade com o FROM

FROM tbPedido 
JOIN
tbCliente ON tbPedido.IdCliente=tbCliente.IdCliente
JOIN
tbProduto ON tbPedido.IdPedido=tbProduto.IdProduto



-- EXEMPLO DE INSERT, INTO E VALUES -----------------------------------------------
INSERT 
INTO tbCliente
VALUES ('JOAO FERREIRA', 1962-09-23, 1200) --Deve seguir a ordem das tabelas

INSERT 
INTO tbCliente
VALUES ('CARLA VIANA', 2003-08-15, 3000) --Normal a data desconfigurar

INSERT
INTO tbPedido
VALUES (1, 1, 'TV', 1, 'JOAO FERREIRA', 123456789, 15, 2000)

INSERT
INTO tbPedido
VALUES (1, 1, 'Televisao', 1, 'MARIA DOS SANTOS', 923456781, 1, 50)



-- EXEMPLO COM UPDATE, SET E WHERE ------------------------------------------------
UPDATE tbCliente --Redefinir a informação já existente
SET Nome='CARLA VIANA BARROS' --Informa a coluna e o novo dado
WHERE IdCliente=5 --Identifica onde deve ser redefinido



-- EXEMPLO COM DELETE -------------------------------------------------------------
DELETE
FROM tbCliente
WHERE Nome='CARLA VIANA BARROS' --Funciona somente com a informação completa, caso fosse somente 'VIANA' a linha não seria afetada





