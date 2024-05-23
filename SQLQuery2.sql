USE bdEstoque

--criar uma consulta que retorne o c�digo do produto,o nome do produto e o nome do fabricantesomente daqueles produtos que custam igual ao valor mais alto--

SELECT codProduto, descricaoProduto, nomeFabricante FROM tbProduto
	INNER JOIN tbFabricante ON tbProduto.codFabricante = tbFabricante.codFabricante
	WHERE valorProduto = (SELECT MAX(valorProduto) FROM tbProduto)

--Criar uma consulta que retorne o nome do produto e o nome do fabricante e o valor somente dos produtos que custem acima do valor m�dio dos produtos em estoque--

SELECT descricaoProduto, nomeFabricante, valorProduto FROM tbProduto
	INNER JOIN tbFabricante ON tbProduto.codFabricante = tbFabricante.codFabricante
	WHERE valorProduto > (SELECT AVG(valorProduto) FROM tbProduto)

--Criar uma consulta que retorne o nome dos clientes tiveram vendas com valor acima do valor m�dio das vendas

SELECT nomeCliente FROM tbCliente
	INNER JOIN tbVenda ON tbCliente.codCliente = tbVenda.codCliente
	WHERE valorTotalVenda > (SELECT AVG(valorTotalVenda) FROM tbVenda)

--Criar uma consulta que retorno o nome e o pre�o dos produtos mais caros

SELECT descricaoProduto, valorProduto FROM tbProduto
WHERE valorProduto = (SELECT MAX(valorProduto) FROM tbProduto)

--Criar uma consulta que retorne o nome e o pre�o do produto mais barato

SELECT descricaoProduto, valorProduto FROM tbProduto
WHERE valorProduto = (SELECT MIN(valorProduto) FROM tbProduto)