SELECT Cliente.Nome, COUNT(Pedido.ID_Pedido) AS Quantidade_Pedidos
FROM Cliente
LEFT JOIN Pedido ON Cliente.ID_Cliente = Pedido.ID_Cliente
GROUP BY Cliente.Nome;

