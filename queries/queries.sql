
-- 1. Recuperações simples com SELECT Statement
-- Listar todos os produtos com suas descrições e preços
SELECT idProduto, Descricao, Valor, Categoria 
FROM Produto;

-- Listar todos os clientes pessoa física
SELECT c.idCliente, c.Nome, c.Endereco, pf.CPF, pf.DataNascimento
FROM Cliente c
JOIN ClientePF pf ON c.idCliente = pf.Cliente_idCliente;

-- 2. Filtros com WHERE Statement
-- Filtrar produtos com valor acima de 1000
SELECT idProduto, Descricao, Valor, Categoria 
FROM Produto 
WHERE CAST(Valor AS FLOAT) > 1000;

-- Filtrar pedidos entregues
SELECT p.idPedido, p.Descricao, e.Status_Entrega, c.Nome as NomeCliente
FROM Pedido p
JOIN Entrega e ON p.idPedido = e.Pedido_idPedido
JOIN Cliente c ON p.Cliente_idCliente = c.idCliente
WHERE e.Status_Entrega = 'Entregue';

-- 3. Expressões para gerar atributos derivados
-- Calcular valor total de cada pedido (produto * quantidade + frete)
SELECT 
    pp.Pedido_idPedido, 
    SUM(CAST(p.Valor AS FLOAT) * pp.Quantidade) AS Subtotal,
    pe.Frete,
    SUM(CAST(p.Valor AS FLOAT) * pp.Quantidade) + pe.Frete AS ValorTotal
FROM produto_por_pedido pp
JOIN Produto p ON pp.Produto_idProduto = p.idProduto
JOIN Pedido pe ON pp.Pedido_idPedido = pe.idPedido
GROUP BY pp.Pedido_idPedido, pe.Frete;

-- Calcular idade dos clientes (data atual fixa para exemplo)
SELECT 
    c.idCliente, 
    c.Nome, 
    pf.DataNascimento, 
    2025 - SUBSTRING(pf.DataNascimento, 1, 4) AS IdadeAproximada
FROM Cliente c
JOIN ClientePF pf ON c.idCliente = pf.Cliente_idCliente;

-- 4. Definir ordenações dos dados com ORDER BY
-- Listar produtos por ordem decrescente de preço
SELECT idProduto, Descricao, Valor, Categoria 
FROM Produto 
ORDER BY CAST(Valor AS FLOAT) DESC;

-- Listar pedidos por ordem de status e data de entrega
SELECT p.idPedido, p.Status_do_pedido, e.Codigo_Rastreamento, e.Status_Entrega
FROM Pedido p
JOIN Entrega e ON p.idPedido = e.Pedido_idPedido
ORDER BY p.Status_do_pedido, e.Status_Entrega;

-- 5. Condições de filtros aos grupos – HAVING Statement
-- Encontrar fornecedores que disponibilizam mais de um produto
SELECT 
    f.idFornecedor, 
    f.RazaoSocial, 
    COUNT(d.Produto_idProduto) AS QuantidadeProdutos
FROM Fornecedor f
JOIN Disponibiliza d ON f.idFornecedor = d.Fornecedor_idFornecedor
GROUP BY f.idFornecedor, f.RazaoSocial
HAVING COUNT(d.Produto_idProduto) > 1;

-- Encontrar produtos estocados com quantidade total acima de 100 unidades
SELECT 
    p.idProduto, 
    p.Descricao, 
    SUM(e.Quantidade) AS QuantidadeTotal
FROM Produto p
JOIN Estocados e ON p.idProduto = e.Produto_idProduto
GROUP BY p.idProduto, p.Descricao
HAVING SUM(e.Quantidade) > 100;

-- 6. Criar junções entre tabelas para fornecer uma perspectiva mais complexa dos dados
-- Visão completa de pedidos com cliente, produtos, pagamento e status de entrega
SELECT 
    p.idPedido,
    c.Nome AS Cliente,
    GROUP_CONCAT(pr.Descricao SEPARATOR ', ') AS Produtos,
    SUM(CAST(pr.Valor AS FLOAT) * pp.Quantidade) AS SubTotal,
    p.Frete,
    pg.Metodo AS FormaPagamento,
    pg.Valor AS ValorTotal,
    e.Status_Entrega,
    e.Codigo_Rastreamento
FROM Pedido p
JOIN Cliente c ON p.Cliente_idCliente = c.idCliente
JOIN produto_por_pedido pp ON p.idPedido = pp.Pedido_idPedido
JOIN Produto pr ON pp.Produto_idProduto = pr.idProduto
JOIN Pagamento pg ON p.idPedido = pg.Pedido_idPedido
JOIN Entrega e ON p.idPedido = e.Pedido_idPedido
GROUP BY p.idPedido, c.Nome, p.Frete, pg.Metodo, pg.Valor, e.Status_Entrega, e.Codigo_Rastreamento;

-- Análise de vendas por categoria de produto
SELECT 
    pr.Categoria,
    COUNT(DISTINCT pp.Pedido_idPedido) AS NumeroPedidos,
    SUM(pp.Quantidade) AS QuantidadeVendida,
    SUM(CAST(pr.Valor AS FLOAT) * pp.Quantidade) AS ValorTotal
FROM Produto pr
JOIN produto_por_pedido pp ON pr.idProduto = pp.Produto_idProduto
GROUP BY pr.Categoria
ORDER BY ValorTotal DESC;

-- Relação entre fornecedores, produtos e locais de estoque
SELECT 
    f.RazaoSocial AS Fornecedor,
    p.Descricao AS Produto,
    p.Categoria,
    e.Local AS LocalEstoque,
    es.Quantidade
FROM Fornecedor f
JOIN Disponibiliza d ON f.idFornecedor = d.Fornecedor_idFornecedor
JOIN Produto p ON d.Produto_idProduto = p.idProduto
JOIN Estocados es ON p.idProduto = es.Produto_idProduto
JOIN Estoque e ON es.Estoque_idEstoque = e.idEstoque
ORDER BY f.RazaoSocial, p.Categoria;

-- 7. Consulta com subconsulta para identificar produtos acima da média de preço
SELECT 
    idProduto, 
    Descricao, 
    Categoria, 
    Valor
FROM Produto
WHERE CAST(Valor AS FLOAT) > (
    SELECT AVG(CAST(Valor AS FLOAT)) 
    FROM Produto
)
ORDER BY CAST(Valor AS FLOAT) DESC;

-- 8. Consulta utilizando CASE para classificar os produtos por faixa de preço
SELECT 
    idProduto, 
    Descricao, 
    Valor,
    CASE 
        WHEN CAST(Valor AS FLOAT) < 50 THEN 'Baixo custo'
        WHEN CAST(Valor AS FLOAT) BETWEEN 50 AND 500 THEN 'Custo médio'
        WHEN CAST(Valor AS FLOAT) BETWEEN 501 AND 2000 THEN 'Premium'
        ELSE 'Luxo'
    END AS CategoriaPreco
FROM Produto
ORDER BY CAST(Valor AS FLOAT);

-- 9. Top 3 clientes com maior valor total em compras
SELECT 
    c.idCliente, 
    c.Nome, 
    SUM(pg.Valor) AS TotalCompras,
    COUNT(DISTINCT p.idPedido) AS TotalPedidos
FROM Cliente c
JOIN Pedido p ON c.idCliente = p.Cliente_idCliente
JOIN Pagamento pg ON p.idPedido = pg.Pedido_idPedido
GROUP BY c.idCliente, c.Nome
ORDER BY TotalCompras DESC
LIMIT 3;

-- 10. Análise de métodos de pagamento preferidos dos clientes
SELECT 
    pg.Metodo, 
    COUNT(pg.idPagamento) AS Quantidade,
    SUM(pg.Valor) AS ValorTotal,
    ROUND(AVG(pg.Valor), 2) AS ValorMedio
FROM Pagamento pg
GROUP BY pg.Metodo
ORDER BY Quantidade DESC;

-- 11. Consulta com UNION para listar todos os clientes (PF e PJ) com suas identificações
SELECT 
    c.idCliente,
    c.Nome,
    'Pessoa Física' AS Tipo,
    pf.CPF AS Identificacao
FROM Cliente c
JOIN ClientePF pf ON c.idCliente = pf.Cliente_idCliente
UNION
SELECT 
    c.idCliente,
    c.Nome,
    'Pessoa Jurídica' AS Tipo,
    pj.CNPJ AS Identificacao
FROM Cliente c
JOIN ClientePJ pj ON c.idCliente = pj.Cliente_idCliente
ORDER BY idCliente;

-- 12. Taxa de conversão de vendedores (quantos produtos disponíveis vs. quantos vendidos)
SELECT 
    tv.idTerceiro_Vendedor,
    tv.RazaoSocial AS Vendedor,
    COUNT(DISTINCT ppv.Produto_idProduto) AS ProdutosDisponiveis,
    COUNT(DISTINCT ppp.Produto_idProduto) AS ProdutosVendidos,
    CASE 
        WHEN COUNT(DISTINCT ppv.Produto_idProduto) > 0 
        THEN ROUND((COUNT(DISTINCT ppp.Produto_idProduto) * 100.0 / COUNT(DISTINCT ppv.Produto_idProduto)), 2)
        ELSE 0 
    END AS TaxaConversao
FROM Terceiro_Vendedor tv
LEFT JOIN ProdutosPorVendedor ppv ON tv.idTerceiro_Vendedor = ppv.Terceiro_Vendedor_idTerceiro_Vendedor
LEFT JOIN produto_por_pedido ppp ON ppv.Produto_idProduto = ppp.Produto_idProduto
GROUP BY tv.idTerceiro_Vendedor, tv.RazaoSocial
ORDER BY TaxaConversao DESC;

-- 13. Produtos que nunca foram vendidos
SELECT 
    p.idProduto, 
    p.Descricao, 
    p.Categoria, 
    p.Valor
FROM Produto p
LEFT JOIN produto_por_pedido ppp ON p.idProduto = ppp.Produto_idProduto
WHERE ppp.Produto_idProduto IS NULL;

-- 14. Performance de entrega por status
SELECT 
    e.Status_Entrega,
    COUNT(e.idEntrega) AS Quantidade,
    ROUND(AVG(p.Frete), 2) AS FreteMediano
FROM Entrega e
JOIN Pedido p ON e.Pedido_idPedido = p.idPedido
GROUP BY e.Status_Entrega
ORDER BY Quantidade DESC;

-- 15. Análise de diversificação de fornecedores por categoria de produto
SELECT 
    p.Categoria,
    COUNT(DISTINCT p.idProduto) AS TotalProdutos,
    COUNT(DISTINCT d.Fornecedor_idFornecedor) AS TotalFornecedores,
    ROUND(COUNT(DISTINCT d.Fornecedor_idFornecedor) * 1.0 / COUNT(DISTINCT p.idProduto), 2) AS FornecedoresPorProduto
FROM Produto p
JOIN Disponibiliza d ON p.idProduto = d.Produto_idProduto
GROUP BY p.Categoria
ORDER BY TotalProdutos DESC;

-- 16. Desempenho de vendas por local do estoque (identificar melhores localizações)
SELECT 
    e.Local AS LocalEstoque,
    COUNT(DISTINCT ppp.Pedido_idPedido) AS TotalPedidos,
    SUM(ppp.Quantidade) AS QuantidadeVendida
FROM Estoque e
JOIN Estocados es ON e.idEstoque = es.Estoque_idEstoque
JOIN produto_por_pedido ppp ON es.Produto_idProduto = ppp.Produto_idProduto
GROUP BY e.Local
ORDER BY QuantidadeVendida DESC;

-- 17. Visualização cliente-produto para identificar padrões de compra
SELECT 
    c.idCliente,
    c.Nome AS Cliente,
    p.Categoria,
    COUNT(DISTINCT pp.Pedido_idPedido) AS NumeroPedidos,
    SUM(pp.Quantidade) AS QuantidadeItens
FROM Cliente c
JOIN Pedido pe ON c.idCliente = pe.Cliente_idCliente
JOIN produto_por_pedido pp ON pe.idPedido = pp.Pedido_idPedido
JOIN Produto p ON pp.Produto_idProduto = p.idProduto
GROUP BY c.idCliente, c.Nome, p.Categoria
ORDER BY c.idCliente, NumeroPedidos DESC;