/*
Exercicio 4
-> A área de RH está com uma nova ação para a empresa, e para isso precisa saber a quantidade 
total de funcionários do sexo Masculino e do sexo Feminino.

SELECT * FROM DimEmployee

a) Descubra essas duas informações utilizando o SQL
(Masculino)
SELECT
	COUNT(FirstName) AS "Total Sexo Masculino"
FROM DimEmployee
WHERE Gender = 'M'

a) Descubra essas duas informações utilizando o SQL
(Feminino)
SELECT
	COUNT(FirstName) AS "Total Sexo Feminino"
FROM DimEmployee
WHERE Gender = 'F'

b) O funcionário e a funcionária mais antigos receberão uma homenagem. Descubra as 
seguintes informações de cada um deles: Nome, E-mail, Data de Contratação.
(Feminino)
SELECT
	TOP(1) FirstName AS "Nome",
	EmailAddress AS "E-mail",
	HireDate AS "Data de Contratação"
FROM DimEmployee
WHERE Gender = 'F'
ORDER BY HireDate ASC

b) O funcionário e a funcionária mais antigos receberão uma homenagem. Descubra as 
seguintes informações de cada um deles: Nome, E-mail, Data de Contratação.
(Masculino)
SELECT
	TOP(1) FirstName AS "Nome",
	EmailAddress AS "E-mail",
	HireDate AS "Data de Contratação"
FROM DimEmployee
WHERE Gender = 'M'
ORDER BY HireDate ASC

*/