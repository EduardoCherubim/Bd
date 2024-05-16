USE bdLivrariaBrasileira
--a) A quantidade de livros agrupado pelo nome do g�nero

SELECT COUNT (idLivro), nomeGenero  FROM tbLivro
INNER JOIN tbGenero ON tbLivro.idGenero = tbGenero.idGenero
GROUP BY nomeGenero

--b) A soma das p�ginas agrupada pelo nome doautor

SELECT SUM (numPaginas), nomeAutor FROM tbLivro
INNER JOIN tbAutor ON tbLivro.idAutor = tbAutor.idAutor
GROUP BY nomeAutor

--c) A m�dia de p�ginas agrupada pelo nome do autorem ordem alfab�tica (de A a Z),

SELECT AVG (numPaginas), nomeAutor FROM tbLivro
INNER JOIN tbAutor ON tbLivro.idAutor = tbAutor.idAutor
GROUP BY nomeAutor
ORDER BY nomeAutor ASC

--d)A quantidade de livros agrupada pelo nome da editoraem ordem alfab�tica inversa (de Z a A)

SELECT AVG (numPaginas), nomeEditora FROM tbLivro
INNER JOIN tbEditora ON tbLivro.idEditora = tbEditora.idEditora
GROUP BY nomeEditora
ORDER BY nomeEditora DESC

--e)A soma de p�ginas doslivrosagrupados pelo nome doautor que sejam de autores cujo nome comece com a letra �C�

SELECT SUM(numPaginas), nomeAutor FROM tbLivro
INNER JOIN tbAutor ON tbLivro.idAutor = tbAutor.idAutor
WHERE nomeAutor LIKE 'C%'
GROUP BY nomeAutor

--f)A  quantidade  de  livros  agrupados  pelo  nome  do  autor,  cujo  nome  do  autor  seja �Machado de Assis� ou �Cora Coralina�ou �Graciliano Ramos� ou �Clarice Lispector�

SELECT SUM(numPaginas), nomeAutor FROM tbLivro
INNER JOIN tbAutor ON tbLivro.idAutor = tbAutor.idAutor
WHERE nomeAutor LIKE 'Machado%' OR
	nomeAutor LIKE 'Cora%' OR
	nomeAutor LIKE 'Graciliano%' OR
	nomeAutor LIKE 'Clarice%'
GROUP BY nomeAutor

--g)A soma das p�ginas dos livros agrupadas pelo nome da editora cujo n�mero de p�ginas esteja entre 200 e 500 (inclusive)

SELECT AVG (numPaginas), nomeEditora FROM tbLivro
INNER JOIN tbEditora ON tbLivro.idEditora = tbEditora.idEditora
WHERE numPaginas BETWEEN 200 AND 500
GROUP BY nomeEditora

--h)O nome dos livros ao lado do nome das editoras e do nome dos autores

SELECT nomeLivro, nomeEditora, nomeAutor FROM tbLivro
INNER JOIN tbEditora ON tbLivro.idEditora = tbEditora.idEditora
INNER JOIN tbAutor ON tbLivro.idAutor = tbAutor.idAutor

--i) O nome dos livros ao lado do nome do autor somente daqueles cujo nome da editora for �Cia das Letras�
SELECT nomeLivro, nomeAutor FROM tbLivro
INNER JOIN tbAutor ON tbAutor.idAutor = tbLivro.idAutor
INNER JOIN tbEditora ON tbEditora.idEditora = tbLivro.idEditora
WHERE tbEditora.nomeEditora LIKE 'Cia das Letras'

--j) O nome dos livros ao lado dos nomes dos autores, somente dos livros que n�o forem do autor ��rico Ver�ssimo�

SELECT nomeLivro, nomeAutor FROM tbLivro
INNER JOIN tbAutor ON tbAutor.idAutor = tbLivro.idAutor
WHERE nomeAutor NOT LIKE 'Erico Verissimo'

--k) Os nomes  dos  autores  ao  lado  dos  nomes dos  livros,  inclusive  daqueles  que  n�o  tem livros cadastrados
SELECT nomeAutor, nomeLivro FROM tbAutor
LEFT JOIN tbLivro ON tbAutor.idAutor = tbLivro.idLivro

--l) Os nomes  dos  autores  ao  lado  dos  nomes dos  livros,  inclusive  daqueles  que  n�o tem autores cadastrados
SELECT nomeAutor, nomeLivro FROM tbAutor
RIGHT JOIN tbLivro ON tbAutor.idAutor = tbLivro.idLivro

--m)O nome dos autores ao lado dos nomes dos livros, indiferente do autor ter ou n�o livro publicado, e indiferente do livro pertencer a algum autor
SELECT nomeAutor, nomeLivro FROM tbAutor
FULL JOIN tbLivro ON tbAutor.idAutor = tbLivro.idLivro

--n)A editora �tica ir� publicar todos os t�tulos dessa livraria. Criar um select que associe os nomes de todos os livros ao lado do nome da editora �tica.
SELECT nomeEditora, nomeLivro FROM tbEditora
LEFT JOIN tbLivro ON tbEditora.idEditora = tbLivro.idEditora
WHERE nomeEditora LIKE 'Atica'

--o)Somente os nomes dos autores que n�o tem livros cadastrados

SELECT nomeAutor, nomeLivro FROM tbAutor
iNNER JOIN tbLivro ON tbAutor.idAutor = tbLivro.idLivro
WHERE nomeLivro LIKE 'NULL'

--p)Os nomes dos g�neros que n�o possuem nenhum livro cadastrado

SELECT nomeGenero, nomeLivro FROM tbGenero
iNNER JOIN tbLivro ON tbLivro.idGenero = tbGenero.idGenero 
WHERE nomeLivro LIKE 'NULL'
