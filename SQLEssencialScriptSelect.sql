/****** Script do comando SelectTopNRows de SSMS  ******/
SELECT TOP (1000) [IdCliente]
      ,[Nome]
      ,[DataNascimento]
      ,[LimiteCliente]
  FROM [DBCliente].[dbo].[tbCliente]