COMANDOS BÁSICOS (INSTRUÇÕES) DE SQL

DIVIDIMOS AS INSTRUÇÕES EM ALGUMAS CATEGORIAS, SÃOE ELAS:
DDL, DML, DQL, E TCL

DDL -> DATA DEFINITION LANGUAGE (LINGUAGEM DE DEFINIÇÃO DE DADOS)
CONTÉM COMANDOS UTILIZADOS PARA CRIAR, MODIFICAR OU EXCLUIR ESTRUTURAS DE BANCO DE DADOS
ESTEST COMANDOS NÃO MANIPULAM DADOS, APENAS ESTRUTURA.
COMANDOS RELACIONADOS: CREATE, ALTER, DROP, TRUNCATE
EXEMPLOS:

CREATE TABLE nome_tabela
ALTER TABLE nome_tabela
DROP TABLE nome_tabela
TRUNCATE TABLE nome_tabela

------------------------

DML -> DATA MANIPULAM LANGUAGE (LINGUAGEM DE MANIPULAÇÃO DE DADOS)
CONTÉM COMANDOS UTILIZADOS PARA MANIPULAR DADOS NAS TABELAS INCLUI INSERÇÃO
ATUALIZAÇÃO E REMOÇÃO DE REGISTROS. ESTES NÃO ALTERAM ESTRUTURA DAS TABELAS.
COMANDOS RELACIONADOS: INSERT, UPDATE, DELETE
EXEMPLOS:

INSERT INTO nome_tabela
UPDATE nome_tabela
DELETE FROM nome_tabela

-------------------------

DQL -> DATA QUERY LANGUAGE (LINGUAGEM DE CONSULTA DE DADOS)
CONTÉM UM COMANDO UTILIZADO PARA CONSULTAR OS DADOS NO BANCO DE DADOS OU SEJA, PARA
FAZER QUERIES (CONSULTAS)
COMANDO RELACIONADO: SELECT

EXEMPLO: SELECT * FROM nome_tabela (* REFERE-SE A TODAS AS COLUNAS DE UMA TABELA. É POSSÍVEL
TAMBÉM INFORMAR O NOME DE COLUNAS SEPARANDO-AS POR VÍRGULAS)

-------------------------

DCL -> DATA CONTROL LANGUAGE (LINGUAGEM DE CONTROLE DE DADOS)
CONTÉM COMANDOS QUE CONTROLAM O ACESSO E PERMISSÕES DE USUÁRIOS SOBRE OBJETOS DE 
BANCO DE DADOS COM TABELAS, VIEWS E ETC.
COMANDOS RELACIONADOS: GRANT, REVOKE
EXEMPLOS:

GRANT SELECT, INSERT ON nome_tabela
REVOKE INSERT ON nome_tabela

--------------------------

TCL -> TRANSACTION CONTROL LANGUAGE (LINGUAGEM DE CONTROLE DE TRANSAÇÕES)
CONTÉM COMANDOS QUE GERENCIAM AS TRANSAÇÕES DE BANCO DE DADOS. TRANSAÇÕES SÃO BLOCOS
DE OPERAÇÕES QUE DEVEM SER EXECUTADAS JUNTAS OU NÃO EXECUTADA.
COMANDOS RELACIONADOS. BEGIN/START TRANSACTION, COMMIT, ROLLBACK, SAVEPOINT

EXEMPLOS:
START TRANSACTION;
    INSERT INTO..
COMMIT; --SE CASO FOI TUDO CERTO

START TRANSACTION 
    UPDATE ...
ROLLBACK; --SE ALGO DER ERRADO


ALTER TABLE categorias ADD ordem INT
DROP TABLE cupons_desconto

------------------------------

SELECT id,
 nome
 FROM
 produtos
 WHERE
 -- id = 1
 -- id > 1
 -- id < 10
 -- id >= 50
 -- id <=
 
SELECT * FROM produtos WHERE preco > 10 and preco < 100 /* seleciona entre maior que 10 e menor que 100 */
SELECT * FROM produtos WHERE preco > 500 and preco < 1000 OR preco = 50 /* filtra entre 500 e 1000 e também filtra só o numero 50 com o or */
SELECT * FROM produtos WHERE preco > 500 and preco < 1000 OR preco != 50 /* vai filtrar tudo menos o 50 por causa da negação do != */
SELECT * FROM produtos WHERE nome LIKE "% para %" /* vai filtrar apenas o para, preciso colocar o espaço para ele nao pegar palavra composta */
SELECT * FROM produtos WHERE nome LIKE "%Ca_teira %" /* underline pega o caractere mais proximo ao ser certo */
SELECT * FROM produtos WHERE id IN(10,14,16) /* vai filtrar apenas o id que eu quiser */
SELECT * FROM produtos WHERE preco BETWEEN 100 AND 500 /* preço entre 100 e 500 */

ORDER BY preco DESC /* vai ordernar de forma descrecente */
ORDER BY preco ASC /* vai ordernar de forma crecente */
LIMIT 5 /* vai trazer apenas 5 linhas de registro. É sempre a última instrução que tem que passar */
SELECT COUNT(*) AS total FROM produtos /* funções agregadas. |AS| soma quantidade de linhas não lunas */
SELECT count(preco) AS total, /* soma o valor de todas as linhas de uma coluna específica */
SUM(soma) AS soma, /* mostra a soma */
AVG(preco) AS media, /* mostra a média */
MIN(preco) AS minimo, /* mostra o valor mais baixo */
MAX(preco) AS maximo /* mostra o valor mais alto */
FROM produtos /*  calcula a média do preço */
SELECT COUNT(*) AS total,
from_categorias
FROM                        /* consulta com agregação, vai mostrar todas as quantidades de produtos de um id por exemplo */
produtos
GROUP BY from_categorias

SELECT 
COUNT(*) AS total,
from_categorias,
categorias.titulo           /* vai referenciar o titulo da classe categoria, o principal é produtos eu só estou referenciando o categorias do FROM produtos */
FROM 
produtos
INNER JOIN clientes ON categorias.id = produtos.from_categorias
GROUP BY from_categorias

TIPOS DE JOIS

INNER JOIN -> RETORNA DADOS QUE TENHAM CORRESPONDENCIA EM AMBAS AS TABELAS
LEFT JOIN -> RETORNA TODOS OS DADOS DA TABELA DA ESQUERDA E OS QUE TENHAM CORRESPONDENCIA NA TABELA DA DIREITA
LEFT JOIN tabela_esquerda ON tabela_esquerda.relacao = tabela_direita.id
RIGHT JOIN -> RETORNA TODOS OS REGISTROS DA TABELA DA DIREITA E TODOS QUE TENHAM CORRESPONDENCIA NA TABELA DA ESQUERDA (USO MENOS COMUM)



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








 



 



 


 

