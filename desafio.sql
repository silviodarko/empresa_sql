CREATE TABLE Cliente (
    ID_Cliente INT PRIMARY KEY,
    Nome VARCHAR(100),
    CPF_CNPJ VARCHAR(14),
    Tipo_Cliente VARCHAR(2)
);

CREATE TABLE Conta (
    ID_Conta INT PRIMARY KEY,
    ID_Cliente INT,
    Saldo DECIMAL(10, 2),
    FOREIGN KEY (ID_Cliente) REFERENCES Cliente(ID_Cliente)
);

CREATE TABLE Forma_Pagamento (
    ID_Forma_Pagamento INT PRIMARY KEY,
    Descricao VARCHAR(100)
);

CREATE TABLE Cliente_Forma_Pagamento (
    ID_Cliente INT,
    ID_Forma_Pagamento INT,
    FOREIGN KEY (ID_Cliente) REFERENCES Cliente(ID_Cliente),
    FOREIGN KEY (ID_Forma_Pagamento) REFERENCES Forma_Pagamento(ID_Forma_Pagamento)
);

CREATE TABLE Pedido (
    ID_Pedido INT PRIMARY KEY,
    ID_Cliente INT,
    Data_Pedido DATE,
    FOREIGN KEY (ID_Cliente) REFERENCES Cliente(ID_Cliente)
);

CREATE TABLE Produto (
    ID_Produto INT PRIMARY KEY,
    Nome VARCHAR(100)
);

CREATE TABLE Fornecedor (
    ID_Fornecedor INT PRIMARY KEY,
    Nome VARCHAR(100)
);

CREATE TABLE Estoque (
    ID_Estoque INT PRIMARY KEY,
    ID_Produto INT,
    ID_Fornecedor INT,
    Quantidade INT,
    FOREIGN KEY (ID_Produto) REFERENCES Produto(ID_Produto),
    FOREIGN KEY (ID_Fornecedor) REFERENCES Fornecedor(ID_Fornecedor)
);

CREATE TABLE Pagamento (
    ID_Pagamento INT PRIMARY KEY,
    ID_Pedido INT,
    ID_Forma_Pagamento INT,
    FOREIGN KEY (ID_Pedido) REFERENCES Pedido(ID_Pedido),
    FOREIGN KEY (ID_Forma_Pagamento) REFERENCES Forma_Pagamento(ID_Forma_Pagamento)
);

CREATE TABLE Entrega (
    ID_Entrega INT PRIMARY KEY,
    ID_Pedido INT,
    Status VARCHAR(100),
    Codigo_Rastreio VARCHAR(100),
    FOREIGN KEY (ID_Pedido) REFERENCES Pedido(ID_Pedido)
);

