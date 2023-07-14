SELECT Fornecedor.Nome
FROM Fornecedor
INNER JOIN Vendedor ON Fornecedor.ID_Fornecedor = Vendedor.ID_Fornecedor;

