SELECT Produto.Nome, Fornecedor.Nome, Estoque.Quantidade
FROM Produto
INNER JOIN Estoque ON Produto.ID_Produto = Estoque.ID_Produto
INNER JOIN Fornecedor ON Estoque.ID_Fornecedor = Fornecedor.ID_Fornecedor;

