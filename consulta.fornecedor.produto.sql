SELECT Fornecedor.Nome, Produto.Nome
FROM Fornecedor
INNER JOIN Estoque ON Fornecedor.ID_Fornecedor = Estoque.ID_Fornecedor
INNER JOIN Produto ON Estoque.ID_Produto = Produto.ID_Produto;

