/*
Exercicio 1

a) Faça um resumo da quantidade vendida (SalesQuantity) de acordo com o canal de vendas 
(channelkey). 
SELECT * FROM FactSales

SELECT
	channelKey AS "Canal de Venda",
	SUM(SalesQuantity) AS "Total Vendido"
FROM
	FactSales
GROUP BY channelKey
	
b) Faça um agrupamento mostrando a quantidade total vendida (SalesQuantity) e quantidade 
total devolvida (Return Quantity) de acordo com o ID das lojas (StoreKey).
SELECT
	StoreKey AS "ID da Loja",
	SUM(SalesQuantity) AS "Total Vendido",
	SUM(ReturnQuantity) AS "Total devolvido"
FROM
	FactSales
GROUP BY StoreKey

c) Faça um resumo do valor total vendido (SalesAmount) para cada canal de venda, mas apenas 
para o ano de 2007.
SELECT
	channelKey AS "Canal de Venda",
	SUM(SalesAmount) AS "Faturamento Total"
FROM
	FactSales
WHERE DateKey BETWEEN '20070101' AND '20071231'
GROUP BY channelKey

/*
