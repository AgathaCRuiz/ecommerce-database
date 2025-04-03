-- Criação das tabelas
-- Tabela Cliente
CREATE TABLE Cliente (
    idCliente INT PRIMARY KEY,
    Nome VARCHAR(45),
    Identificacao VARCHAR(45),
    Endereco VARCHAR(45)
);

-- Tabela ClientePJ
CREATE TABLE ClientePJ (
    idClientePJ INT PRIMARY KEY,
    CNPJ VARCHAR(14),
    RazaoSocial VARCHAR(45),
    Cliente_idCliente INT,
    FOREIGN KEY (Cliente_idCliente) REFERENCES Cliente(idCliente)
);

-- Tabela ClientePF
CREATE TABLE ClientePF (
    idClientePF INT PRIMARY KEY,
    CPF VARCHAR(11),
    DataNascimento VARCHAR(45),
    Cliente_idCliente INT,
    FOREIGN KEY (Cliente_idCliente) REFERENCES Cliente(idCliente)
);

-- Tabela Fornecedor
CREATE TABLE Fornecedor (
    idFornecedor INT PRIMARY KEY,
    RazaoSocial VARCHAR(45),
    CNPJ VARCHAR(45)
);

-- Tabela Produto
CREATE TABLE Produto (
    idProduto INT PRIMARY KEY,
    Categoria VARCHAR(45),
    Descricao VARCHAR(45),
    Valor VARCHAR(45)
);

-- Tabela Disponibiliza
CREATE TABLE Disponibiliza (
    Fornecedor_idFornecedor INT,
    Produto_idProduto INT,
    PRIMARY KEY (Fornecedor_idFornecedor, Produto_idProduto),
    FOREIGN KEY (Fornecedor_idFornecedor) REFERENCES Fornecedor(idFornecedor),
    FOREIGN KEY (Produto_idProduto) REFERENCES Produto(idProduto)
);

-- Tabela Estoque
CREATE TABLE Estoque (
    idEstoque INT PRIMARY KEY,
    Local VARCHAR(45)
);

-- Tabela Estocados
CREATE TABLE Estocados (
    Produto_idProduto INT,
    Estoque_idEstoque INT,
    Quantidade INT,
    PRIMARY KEY (Produto_idProduto, Estoque_idEstoque),
    FOREIGN KEY (Produto_idProduto) REFERENCES Produto(idProduto),
    FOREIGN KEY (Estoque_idEstoque) REFERENCES Estoque(idEstoque)
);

-- Tabela Terceiro_Vendedor
CREATE TABLE Terceiro_Vendedor (
    idTerceiro_Vendedor INT PRIMARY KEY,
    RazaoSocial VARCHAR(45),
    Local VARCHAR(45)
);

-- Tabela ProdutosPorVendedor
CREATE TABLE ProdutosPorVendedor (
    Terceiro_Vendedor_idTerceiro_Vendedor INT,
    Produto_idProduto INT,
    Quantidade INT,
    PRIMARY KEY (Terceiro_Vendedor_idTerceiro_Vendedor, Produto_idProduto),
    FOREIGN KEY (Terceiro_Vendedor_idTerceiro_Vendedor) REFERENCES Terceiro_Vendedor(idTerceiro_Vendedor),
    FOREIGN KEY (Produto_idProduto) REFERENCES Produto(idProduto)
);

-- Tabela Pedido
CREATE TABLE Pedido (
    idPedido INT PRIMARY KEY,
    Status_do_pedido VARCHAR(45),
    Descricao VARCHAR(45),
    Cliente_idCliente INT,
    Frete FLOAT,
    FOREIGN KEY (Cliente_idCliente) REFERENCES Cliente(idCliente)
);

-- Tabela produto_por_pedido
CREATE TABLE produto_por_pedido (
    Produto_idProduto INT,
    Pedido_idPedido INT,
    Quantidade INT,
    PRIMARY KEY (Produto_idProduto, Pedido_idPedido),
    FOREIGN KEY (Produto_idProduto) REFERENCES Produto(idProduto),
    FOREIGN KEY (Pedido_idPedido) REFERENCES Pedido(idPedido)
);

-- Tabela Entrega
CREATE TABLE Entrega (
    idEntrega INT PRIMARY KEY,
    Codigo_Rastreamento VARCHAR(45),
    Status_Entrega VARCHAR(45),
    Pedido_idPedido INT,
    FOREIGN KEY (Pedido_idPedido) REFERENCES Pedido(idPedido)
);

-- Tabela Pagamento
CREATE TABLE Pagamento (
    idPagamento INT PRIMARY KEY,
    Metodo VARCHAR(45),
    Valor FLOAT,
    Pedido_idPedido INT,
    Pedido_Cliente_idCliente INT,
    FOREIGN KEY (Pedido_idPedido) REFERENCES Pedido(idPedido),
    FOREIGN KEY (Pedido_Cliente_idCliente) REFERENCES Cliente(idCliente)
);
