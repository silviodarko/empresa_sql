# empresa_sql

Tabelas:

Cliente

ID_Cliente (chave primária)
Nome
CPF/CNPJ
Tipo_Cliente (PF ou PJ)
Conta

ID_Conta (chave primária)
ID_Cliente (chave estrangeira referenciando a tabela Cliente)
Saldo
Forma_Pagamento

ID_Forma_Pagamento (chave primária)
Descricao
Cliente_Forma_Pagamento

ID_Cliente (chave estrangeira referenciando a tabela Cliente)
ID_Forma_Pagamento (chave estrangeira referenciando a tabela Forma_Pagamento)
Pedido

ID_Pedido (chave primária)
ID_Cliente (chave estrangeira referenciando a tabela Cliente)
Data_Pedido
Produto

ID_Produto (chave primária)
Nome
Fornecedor

ID_Fornecedor (chave primária)
Nome
Estoque

ID_Estoque (chave primária)
ID_Produto (chave estrangeira referenciando a tabela Produto)
ID_Fornecedor (chave estrangeira referenciando a tabela Fornecedor)
Quantidade
Pagamento

ID_Pagamento (chave primária)
ID_Pedido (chave estrangeira referenciando a tabela Pedido)
ID_Forma_Pagamento (chave estrangeira referenciando a tabela Forma_Pagamento)
Entrega

ID_Entrega (chave primária)
ID_Pedido (chave estrangeira referenciando a tabela Pedido)
Status
Codigo_Rastreio
