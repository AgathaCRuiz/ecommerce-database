
-- Inserção de dados de exemplo

-- Inserir Clientes
INSERT INTO Cliente VALUES (1, 'João Silva', 'RG123456', 'Rua A, 123');
INSERT INTO Cliente VALUES (2, 'Maria Souza', 'RG234567', 'Rua B, 456');
INSERT INTO Cliente VALUES (3, 'Tech Solutions LTDA', 'IE123456', 'Av. Paulista, 1000');
INSERT INTO Cliente VALUES (4, 'Ana Oliveira', 'RG345678', 'Rua C, 789');
INSERT INTO Cliente VALUES (5, 'Carlos Santos', 'RG456789', 'Rua D, 101');
INSERT INTO Cliente VALUES (6, 'Global Comércio', 'IE234567', 'Av. Brasil, 500');
INSERT INTO Cliente VALUES (7, 'Fernanda Lima', 'RG567890', 'Rua E, 202');
INSERT INTO Cliente VALUES (8, 'Ricardo Pereira', 'RG678901', 'Rua F, 303');
INSERT INTO Cliente VALUES (9, 'Mega Corporação', 'IE345678', 'Av. República, 2000');
INSERT INTO Cliente VALUES (10, 'Juliana Costa', 'RG789012', 'Rua G, 404');

-- Inserir ClientePF
INSERT INTO ClientePF VALUES (1, '12345678901', '1990-05-15', 1);
INSERT INTO ClientePF VALUES (2, '23456789012', '1985-10-20', 2);
INSERT INTO ClientePF VALUES (3, '34567890123', '1992-03-25', 4);
INSERT INTO ClientePF VALUES (4, '45678901234', '1988-07-30', 5);
INSERT INTO ClientePF VALUES (5, '56789012345', '1995-12-10', 7);
INSERT INTO ClientePF VALUES (6, '67890123456', '1980-01-05', 8);
INSERT INTO ClientePF VALUES (7, '78901234567', '1993-09-15', 10);
INSERT INTO ClientePF VALUES (8, '89012345678', '1991-11-22', 1);
INSERT INTO ClientePF VALUES (9, '90123456789', '1987-04-17', 2);
INSERT INTO ClientePF VALUES (10, '01234567890', '1997-06-28', 4);

-- Inserir ClientePJ
INSERT INTO ClientePJ VALUES (1, '12345678000190', 'Tech Solutions LTDA', 3);
INSERT INTO ClientePJ VALUES (2, '23456789000191', 'Global Comércio', 6);
INSERT INTO ClientePJ VALUES (3, '34567890000192', 'Mega Corporação', 9);
INSERT INTO ClientePJ VALUES (4, '45678901000193', 'Inova Tech LTDA', 3);
INSERT INTO ClientePJ VALUES (5, '56789012000194', 'Comércio Digital SA', 6);
INSERT INTO ClientePJ VALUES (6, '67890123000195', 'Brasil Imports LTDA', 9);
INSERT INTO ClientePJ VALUES (7, '78901234000196', 'Tecnologia Avançada ME', 3);
INSERT INTO ClientePJ VALUES (8, '89012345000197', 'Distribuidora Nacional', 6);
INSERT INTO ClientePJ VALUES (9, '90123456000198', 'Sul Comércio LTDA', 9);
INSERT INTO ClientePJ VALUES (10, '01234567000199', 'Norte Negócios SA', 3);

-- Inserir Fornecedor
INSERT INTO Fornecedor VALUES (1, 'Eletrônicos Brasil LTDA', '12345678000101');
INSERT INTO Fornecedor VALUES (2, 'Moda Fashion SA', '23456789000102');
INSERT INTO Fornecedor VALUES (3, 'Alimentos Premium', '34567890000103');
INSERT INTO Fornecedor VALUES (4, 'Tech Imports', '45678901000104');
INSERT INTO Fornecedor VALUES (5, 'Móveis e Decoração', '56789012000105');
INSERT INTO Fornecedor VALUES (6, 'Esportes e Lazer', '67890123000106');
INSERT INTO Fornecedor VALUES (7, 'Livros e Cultura', '78901234000107');
INSERT INTO Fornecedor VALUES (8, 'Beleza e Cosméticos', '89012345000108');
INSERT INTO Fornecedor VALUES (9, 'Automotivo Parts', '90123456000109');
INSERT INTO Fornecedor VALUES (10, 'Ferramentas Pro', '01234567000110');

-- Inserir Produto
INSERT INTO Produto VALUES (1, 'Eletrônicos', 'Smartphone XYZ', '1999.99');
INSERT INTO Produto VALUES (2, 'Vestuário', 'Camiseta Polo', '89.90');
INSERT INTO Produto VALUES (3, 'Alimentos', 'Chocolate Premium', '15.50');
INSERT INTO Produto VALUES (4, 'Eletrônicos', 'Notebook Pro', '4999.99');
INSERT INTO Produto VALUES (5, 'Móveis', 'Sofá Retrátil', '1299.90');
INSERT INTO Produto VALUES (6, 'Esportes', 'Bola de Futebol', '49.90');
INSERT INTO Produto VALUES (7, 'Livros', 'Romance Bestseller', '39.90');
INSERT INTO Produto VALUES (8, 'Beleza', 'Perfume Elegance', '199.90');
INSERT INTO Produto VALUES (9, 'Automotivo', 'Óleo Motor Premium', '35.90');
INSERT INTO Produto VALUES (10, 'Ferramentas', 'Kit Ferramentas Completo', '299.90');

-- Inserir Disponibiliza
INSERT INTO Disponibiliza VALUES (1, 1);
INSERT INTO Disponibiliza VALUES (1, 4);
INSERT INTO Disponibiliza VALUES (2, 2);
INSERT INTO Disponibiliza VALUES (3, 3);
INSERT INTO Disponibiliza VALUES (4, 1);
INSERT INTO Disponibiliza VALUES (5, 5);
INSERT INTO Disponibiliza VALUES (6, 6);
INSERT INTO Disponibiliza VALUES (7, 7);
INSERT INTO Disponibiliza VALUES (8, 8);
INSERT INTO Disponibiliza VALUES (9, 9);
INSERT INTO Disponibiliza VALUES (10, 10);

-- Inserir Estoque
INSERT INTO Estoque VALUES (1, 'Depósito SP');
INSERT INTO Estoque VALUES (2, 'Depósito RJ');
INSERT INTO Estoque VALUES (3, 'Depósito MG');
INSERT INTO Estoque VALUES (4, 'Depósito RS');
INSERT INTO Estoque VALUES (5, 'Depósito PR');
INSERT INTO Estoque VALUES (6, 'Depósito BA');
INSERT INTO Estoque VALUES (7, 'Depósito PE');
INSERT INTO Estoque VALUES (8, 'Depósito CE');
INSERT INTO Estoque VALUES (9, 'Depósito AM');
INSERT INTO Estoque VALUES (10, 'Depósito DF');

-- Inserir Estocados
INSERT INTO Estocados VALUES (1, 1, 100);
INSERT INTO Estocados VALUES (2, 1, 200);
INSERT INTO Estocados VALUES (3, 2, 150);
INSERT INTO Estocados VALUES (4, 2, 50);
INSERT INTO Estocados VALUES (5, 3, 30);
INSERT INTO Estocados VALUES (6, 4, 80);
INSERT INTO Estocados VALUES (7, 5, 120);
INSERT INTO Estocados VALUES (8, 6, 90);
INSERT INTO Estocados VALUES (9, 7, 60);
INSERT INTO Estocados VALUES (10, 8, 110);

-- Inserir Terceiro_Vendedor
INSERT INTO Terceiro_Vendedor VALUES (1, 'Vendas Online LTDA', 'São Paulo');
INSERT INTO Terceiro_Vendedor VALUES (2, 'Mega Comércio', 'Rio de Janeiro');
INSERT INTO Terceiro_Vendedor VALUES (3, 'Distribuidora Central', 'Belo Horizonte');
INSERT INTO Terceiro_Vendedor VALUES (4, 'Sul Vendas', 'Porto Alegre');
INSERT INTO Terceiro_Vendedor VALUES (5, 'Norte Comércio', 'Manaus');
INSERT INTO Terceiro_Vendedor VALUES (6, 'Nordeste Distribuição', 'Recife');
INSERT INTO Terceiro_Vendedor VALUES (7, 'Centro-Oeste Vendas', 'Brasília');
INSERT INTO Terceiro_Vendedor VALUES (8, 'Sudeste Distribuidora', 'São Paulo');
INSERT INTO Terceiro_Vendedor VALUES (9, 'Venda Express', 'Salvador');
INSERT INTO Terceiro_Vendedor VALUES (10, 'Comércio Total', 'Fortaleza');

-- Inserir ProdutosPorVendedor
INSERT INTO ProdutosPorVendedor VALUES (1, 1, 50);
INSERT INTO ProdutosPorVendedor VALUES (1, 2, 100);
INSERT INTO ProdutosPorVendedor VALUES (2, 3, 75);
INSERT INTO ProdutosPorVendedor VALUES (2, 4, 25);
INSERT INTO ProdutosPorVendedor VALUES (3, 5, 15);
INSERT INTO ProdutosPorVendedor VALUES (4, 6, 40);
INSERT INTO ProdutosPorVendedor VALUES (5, 7, 60);
INSERT INTO ProdutosPorVendedor VALUES (6, 8, 45);
INSERT INTO ProdutosPorVendedor VALUES (7, 9, 30);
INSERT INTO ProdutosPorVendedor VALUES (8, 10, 55);

-- Inserir Pedido
INSERT INTO Pedido VALUES (1, 'Aprovado', 'Pedido de eletrônicos', 1, 25.50);
INSERT INTO Pedido VALUES (2, 'Em processamento', 'Pedido de vestuário', 2, 15.90);
INSERT INTO Pedido VALUES (3, 'Enviado', 'Pedido de alimentos', 3, 10.00);
INSERT INTO Pedido VALUES (4, 'Entregue', 'Pedido de eletrônicos', 4, 30.00);
INSERT INTO Pedido VALUES (5, 'Aprovado', 'Pedido de móveis', 5, 50.00);
INSERT INTO Pedido VALUES (6, 'Em processamento', 'Pedido de esportes', 6, 12.50);
INSERT INTO Pedido VALUES (7, 'Enviado', 'Pedido de livros', 7, 8.90);
INSERT INTO Pedido VALUES (8, 'Entregue', 'Pedido de beleza', 8, 9.90);
INSERT INTO Pedido VALUES (9, 'Aprovado', 'Pedido automotivo', 9, 18.50);
INSERT INTO Pedido VALUES (10, 'Em processamento', 'Pedido de ferramentas', 10, 22.90);

-- Inserir produto_por_pedido
INSERT INTO produto_por_pedido VALUES (1, 1, 1);
INSERT INTO produto_por_pedido VALUES (2, 2, 3);
INSERT INTO produto_por_pedido VALUES (3, 3, 5);
INSERT INTO produto_por_pedido VALUES (4, 4, 1);
INSERT INTO produto_por_pedido VALUES (5, 5, 1);
INSERT INTO produto_por_pedido VALUES (6, 6, 2);
INSERT INTO produto_por_pedido VALUES (7, 7, 3);
INSERT INTO produto_por_pedido VALUES (8, 8, 1);
INSERT INTO produto_por_pedido VALUES (9, 9, 2);
INSERT INTO produto_por_pedido VALUES (10, 10, 1);

-- Inserir Entrega
INSERT INTO Entrega VALUES (1, 'BR123456789', 'Em trânsito', 1);
INSERT INTO Entrega VALUES (2, 'BR234567890', 'Aguardando coleta', 2);
INSERT INTO Entrega VALUES (3, 'BR345678901', 'Em trânsito', 3);
INSERT INTO Entrega VALUES (4, 'BR456789012', 'Entregue', 4);
INSERT INTO Entrega VALUES (5, 'BR567890123', 'Preparando envio', 5);
INSERT INTO Entrega VALUES (6, 'BR678901234', 'Aguardando coleta', 6);
INSERT INTO Entrega VALUES (7, 'BR789012345', 'Em trânsito', 7);
INSERT INTO Entrega VALUES (8, 'BR890123456', 'Entregue', 8);
INSERT INTO Entrega VALUES (9, 'BR901234567', 'Preparando envio', 9);
INSERT INTO Entrega VALUES (10, 'BR012345678', 'Aguardando coleta', 10);

-- Inserir Pagamento
INSERT INTO Pagamento VALUES (1, 'Cartão de Crédito', 2025.49, 1, 1);
INSERT INTO Pagamento VALUES (2, 'Boleto', 284.70, 2, 2);
INSERT INTO Pagamento VALUES (3, 'PIX', 87.50, 3, 3);
INSERT INTO Pagamento VALUES (4, 'Cartão de Crédito', 5029.99, 4, 4);
INSERT INTO Pagamento VALUES (5, 'Boleto', 1349.90, 5, 5);
INSERT INTO Pagamento VALUES (6, 'PIX', 112.30, 6, 6);
INSERT INTO Pagamento VALUES (7, 'Cartão de Crédito', 128.60, 7, 7);
INSERT INTO Pagamento VALUES (8, 'Boleto', 209.80, 8, 8);
INSERT INTO Pagamento VALUES (9, 'PIX', 90.30, 9, 9);
INSERT INTO Pagamento VALUES (10, 'Cartão de Crédito', 322.80, 10, 10);