
/* 
6. DESAFIO - MONTE UMA CONSULTA COM AS REGRAS ABAIXO
Traga o nome do produto, o preço, a categoria
Filtre os produtos com preço entre X e Y
Mostre somente as categorias ativas.
Só traga os produtos cujo nome contenha uma palavra específica 
Agrupe os resultados por categoria.
Mostre também:
	•	A quantidade de produtos por categoria.
	•	O preço médio dos produtos daquela categoria.
	•	O produto mais caro da categoria.


COMANDO
SET SESSION sql_mode=(SELECT REPLACE(@@sql_mode,'ONLY_FULL_GROUP_BY','')); */

SELECT produtos.nome, produtos.preco, produtos.from_categorias, categorias.ativo FROM produtos
INNER JOIN categorias ON produtos.from_categorias = categorias.id
WHERE preco BETWEEN 500 AND 1000 AND categorias.ativo = 1    
AND produtos.nome LIKE "Cerveja%" GROUP BY  from_categorias;

SET SESSION sql_mode=(SELECT REPLACE(@@sql_mode,'ONLY_FULL_GROUP_BY',''));

 /* 5. Liste o produto mais caro de cada categoria */

 SELECT count(preco) AS total, 
MAX(preco) AS maximo
FROM produtos 
INNER JOIN categorias ON categorias.id = produtos.from_categorias
GROUP BY from_categorias

/* 4. Liste quantos produtos existem por categoria */

SELECT
COUNT(*) AS total, from_categorias FROM produtos               
INNER JOIN categorias ON produtos.from_categorias = categorias.id
GROUP BY
from_categorias

/* 3. Liste os produtos que pertencem a categorias ativas */

SELECT 
from_categorias,
categorias.id,
categorias.titulo,
categorias.ativo,
categorias.ordem
FROM 
produtos
LEFT JOIN categorias ON categorias.id = produtos.from_categorias
WHERE categorias.ativo = 1;

/* 2. Liste todos os produtos, com ou sem categoria */

SELECT 
from_categorias,
categorias.id,
categorias.titulo,
categorias.ativo,
categorias.ordem
FROM 
produtos
LEFT JOIN categorias ON categorias.id = produtos.from_categorias

/* 1. Liste todos os produtos com suas respectivas categorias */

SELECT 
from_categorias,
categorias.id,
categorias.titulo,
categorias.ativo,
categorias.ordem
FROM 
produtos
INNER JOIN categorias ON categorias.id = produtos.from_categorias
GROUP BY from_categorias

/* mostrando como uma concatenação funciona */

SELECT
c.id,
c.nome,
COUNT(e.id) AS total_enderecos,
CONCAT(
	e.logradouro, ', ',
    e.numero, ' | ',
	IF(e.complemento IS NOT NULL, CONCAT(e.complemento, ' | '), ''),
    e.bairro, ' | ',
    e.cidade, ' | ',
    e.estado, ' | CEP ',
    e.cep
) AS endereco
FROM
clientes c
INNER JOIN clientes_enderecos e ON e.clientes_id = c.id AND e.principal = 1
GROUP BY e.clientes_id
ORDER BY e.clientes_id ASC;

/* mostrando a media de nota de 3 alunos
tem id, nome, nota1, nota2, nota3 como coluna

 */

SELECT nome, nota1, nota2, nota3,
(nota1 + nota2 + nota3 ) /3 AS media,
CASE
	WHEN ((nota1 + nota2 + nota3 ) /3) < 8 THEN 'REPROVADO'
    WHEN ((nota1 + nota2 + nota3 ) /3)  >= 8 THEN 'APROVADO'
END AS situacaoAluno
FROM 
alunos0

/* outro forma */

SELECT
nome,
nota1,
nota2,
nota3,
ROUND((nota1 + nota2 + nota 3) / 3, 1) AS media,
CASE
	WHEN (nota1 + nota2 + nota3) / 3 >= 9 THEN 'Aprovado'
	ELSE 'Reprovado'
END
FROM alunos0

/* USANDO IF */
IF((nota1 + nota2 + nota3) / 3 >= 7, "aprovado", "reprovado") AS situacao_if
FROM
alunos0

----------------------------------------------------------------

CREATE TABLE artigos (
	id INT PRIMARY KEY AUTO_INCREMENT, -- tipo indice primary key
    titulo VARCHAR(255),
	username VARCHAR(50) UNIQUE, -- garante valores unicos
    telfone CHAR(10),
    conteudo TEXT,
    data_create DATE,
    INDEX idx_telefone (telefone),
    KEY idx_data (data_create),
    -- KEY E INDEX são a mesma coisa, o nome diferente é apenas sinonimo
    FULLTEXT (conteudo), -- busca para textos
    INDEX idx_varios (username, titulo) -- INDICE COMPOSTO
    
)




 



 



 


 

