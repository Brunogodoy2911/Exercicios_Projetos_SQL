/*
Exercicio 4

SELECT * FROM DimProduct

a) Faça um agrupamento e descubra a quantidade total de produtos por marca.
SELECT
	BrandName AS "Marca do Produto",
	COUNT(BrandName) AS "Quantidade de Produto"
FROM
	DimProduct
GROUP BY BrandName

b) Determine a média do preço unitário (UnitPrice) para cada ClassName. 
SELECT
	ClassName AS "Classe do Produto",
	AVG(UnitPrice) AS "Média do preço unitário"
FROM
	DimProduct
GROUP BY ClassName

c) Faça um agrupamento de cores e descubra o peso total que cada cor de produto possui.
SELECT
	ColorName AS "Cor",
	SUM(Weight) AS "Peso Total"
FROM DimProduct
GROUP BY ColorName

*/