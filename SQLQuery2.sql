USE bdEstoque

INSERT INTO tbCliente (nomeCliente,cpfCliente,emailCliente,sexoCliente,dataNascimento)	
VALUES
	('Amando José Santana','123.456.789-00','amandojsanatana@outlook.com','M','21/02/1961')
	,('Sheila Carvalho Leal','456.789.098-23','scarvalho@ig.com.br','F','13/09/1978')
	,('Carlos Henrique Souza','765.982.782-99','chenrique@ig.com.br','M','08/09/1981')
	,('Maria Aparecida Souza','873.653.098-99','mapdasouza@outlook.com','F','07/07/1962')
	,('Adriana Nogueira Silva','763.543.093-88','drica1977@ig.com.br','F','09/04/1977')
	,('Paulo Henrique Silva','873.901.231-11','phsilva80@hotmail.com','M','02/02/1987')

INSERT INTO tbFabricante (nomeFabricante)
VALUES
	('Unilever')
	,('P&G')
	,('Bunge')

INSERT INTO tbFornecedor (nomeFornecedor,contatoFornecedor)
VALUES
	('Atacadão','Carlos Santos')
	,('Assai','Maria Stella')
	,('Roldão','Paulo César')

INSERT INTO tbProduto (descricaoProduto,valorProduto,quantidadeProduto)
VALUES
	('Amaciante Downy',5.76,1500)
	,('Amaciante Comfort',5.45.2300)
	,('Sabão em pó OMO',5.99,1280)
	,('Margarina Qually',4,76,2500)
	,('Salsicha Hot Dog Saddia',6.78,2900)
	,('Mortadela Perdigão',2.50,1200)
	,('Hamburguer Saddia',9.89,1600)
	,('Fralda Pampers',36,340)
	,('Xampu Seda',5.89,800)
	,('Condicionador Seda',6.50,700)
