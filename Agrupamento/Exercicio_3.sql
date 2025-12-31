/*
Exercicio 3

SELECT * FROM FactOnlineSales

a) Você deve fazer uma consulta à tabela FactOnlineSales e descobrir qual é o ID 
(CustomerKey) do cliente que mais realizou compras online (de acordo com a coluna 
SalesQuantity).
SELECT TOP(1)
	CustomerKey AS "ID do Cliente",
	SUM(SalesQuantity) AS "Total Vendido"
FROM
	FactOnlineSales
GROUP BY
	CustomerKey
ORDER BY SUM(SalesQuantity) DESC

b) Feito isso, faça um agrupamento de total vendido (SalesQuantity) por ID do produto 
e descubra quais foram os top 3 produtos mais comprados pelo cliente da letra a).
SELECT TOP(3)
	ProductKey AS "ID do Produto",
	SUM(SalesQuantity) AS "Total Vendido"
FROM
	FactOnlineSales
WHERE CustomerKey = 19037
GROUP BY
	ProductKey
ORDER BY SUM(SalesQuantity) DESC

*/