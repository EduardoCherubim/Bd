USE bdEstoque

UPDATE INTO bdProduto (valorProduto)
VALUES(5.99)
,(6.58)
,(6.47)
,(7.15)
WHERE codFabricante = 1

UPDATE INTO bdProduto (valorProduto)
VALUES (5.35)
,(33.48)
WHERE codFabricante = 2

UPDATE INTO bdProduto (quantidadeProduto)
VALUES (1470)
,(2270)
,(2470)
,(1570)
WHERE codFornecedor = 1

UPDATE INTO tbCliente(nomeCliente)
VALUES ('Adriana Nogueira Silva Campos')
WHERE codCliente = 5

UPDATE INTO tbVenda (valorTotalVenda)
VALUES (4275)
,(3230)
,(1995)
,(2565)
WHERE dataVenda = %/02/2014

DELETE INTO tbItensVenda
(quantidadeItensVenda,subTotalItensVenda)
WHERE codProduto = 5
