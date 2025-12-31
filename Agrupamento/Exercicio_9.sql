/*
Exercicio 9
-> Faça uma tabela resumo mostrando a quantidade total de funcionários de acordo com o 
Departamento (DepartmentName). Importante: Você deverá considerar apenas os 
funcionários ativos.

SELECT * FROM DimEmployee

SELECT
	DepartmentName AS "Departamento",
	COUNT(FirstName) AS "Qtd. Total de Funcionários"
FROM
	DimEmployee
WHERE Status IS NOT NULL
GROUP BY DepartmentName
ORDER BY COUNT(FirstName) DESC

*/