USE bdEstoque

UPDATE bdProduto
SET valorProduto = valorProduto * 1.10
WHERE codFabricante = 1

UPDATE bdProduto
SET valorProduto = valorProduto * 0.93
WHERE codFabricante = 2

UPDATE bdProduto
SET quantidadeProduto = quantidadeProduto - 30
WHERE codFornecedor = 1

UPDATE tbCliente
SET nomeCliente = 'Adriana Nogueira Silva Campos'
WHERE codCliente = 5

UPDATE tbVenda (valorTotalVenda)
SET valorTotalVenda = ValorTotalVenda * 0.95
WHERE dataVenda = %/02/2014

DELETE tbItensVenda
(quantidadeItensVenda,subTotalItensVenda)
WHERE codProduto = 5
