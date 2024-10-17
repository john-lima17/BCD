REATE DATABASE LivrariaSENAI;
USE LivrariaSENAI;

-- Tabela Cliente
CREATE TABLE CLIENTE (
    id_cliente INT AUTO_INCREMENT PRIMARY KEY,
    nome VARCHAR(45),
    cpf VARCHAR(11),
    rg VARCHAR(11),
    email VARCHAR(45)
);

-- Tabela Clientes_Telefones
CREATE TABLE CLIENTES_TELEFONES (
    id_telefone INT AUTO_INCREMENT PRIMARY KEY,
    telefone VARCHAR(15),
    CLIENTE_id_cliente INT,
    FOREIGN KEY (CLIENTE_id_cliente) REFERENCES CLIENTE(id_cliente)
);

-- Tabela Clientes_Endereco
CREATE TABLE CLIENTES_ENDERECO (
    id_endereco INT AUTO_INCREMENT PRIMARY KEY,
    rua VARCHAR(45),
    bairro VARCHAR(45),
    numero INT,
    cidade VARCHAR(45),
    estado VARCHAR(45),
    CLIENTE_id_cliente INT,
    FOREIGN KEY (CLIENTE_id_cliente) REFERENCES CLIENTE(id_cliente)
);

-- Tabela Editora
CREATE TABLE EDITORA (
    id_editora INT AUTO_INCREMENT PRIMARY KEY,
    nome_editora VARCHAR(45),
    nome_contato VARCHAR(45),
    email VARCHAR(45)
);

-- Tabela Livro
CREATE TABLE LIVRO (
    id_livro INT AUTO_INCREMENT PRIMARY KEY,
    titulo VARCHAR(45),
    categoria VARCHAR(45),
    isbn VARCHAR(13),
    ano DATE,
    valor DECIMAL(10,2),
    autor VARCHAR(45),
    EDITORA_id_editora INT,
    FOREIGN KEY (EDITORA_id_editora) REFERENCES EDITORA(id_editora)
);

-- Tabela Estoque
CREATE TABLE ESTOQUE (
    quantidade INT,
    LIVRO_id_livro INT,
    FOREIGN KEY (LIVRO_id_livro) REFERENCES LIVRO(id_livro)
);

-- Tabela Pedido
CREATE TABLE PEDIDO (
    id_pedido INT AUTO_INCREMENT PRIMARY KEY,
    data DATE,
    CLIENTE_id_cliente INT,
    FOREIGN KEY (CLIENTE_id_cliente) REFERENCES CLIENTE(id_cliente)
);

-- Tabela Item_Pedido
CREATE TABLE ITEM_PEDIDO (
    PEDIDO_id_pedido INT,
    LIVRO_id_livro INT,
    quantidade INT,
    PRIMARY KEY (PEDIDO_id_pedido, LIVRO_id_livro),
    FOREIGN KEY (PEDIDO_id_pedido) REFERENCES PEDIDO(id_pedido),
    FOREIGN KEY (LIVRO_id_livro) REFERENCES LIVRO(id_livro)
);

-- Inserir 10 clientes
INSERT INTO CLIENTE (nome, cpf, rg, email) VALUES
('João Silva', '12345678900', '1234567', 'joao@email.com'),
('Maria Oliveira', '23456789001', '2345678', 'maria@email.com'),
('José Souza', '34567890123', '3456789', 'jose@email.com'),
('Abner Luiz', '11122233344', '4567891', 'abner@email.com'),
('Mazé Souza', '55555500021', '5678910', 'maze@email.com'),
('Juliana', '11111111111', '6789101', 'juliana@email.com'),
('Luiz', '88888888888', '7891011', 'luiz@email.com'),
('Nathália', '55555500021', '8910112', 'nathalia@email.com'),
('Nicole', '77777777777', '9101112', 'nicole@email.com'),
('Guilherme', '22222222222', '1011123', 'guilherme@email.com');

-- Inserir 15 telefones de clientes
INSERT INTO CLIENTES_TELEFONES (telefone, CLIENTE_id_cliente) VALUES
('11987654321', 1),
('11987654322', 2),
('11987654323', 3),
('11987654324', 4),
('11987654325', 5),
('11987654326', 6),
('11987654327', 7),
('11987654328', 8),
('11987654329', 9),
('11987654310', 10),
('11987654311', 11),
('11987654312', 12),
('11987654313', 13),
('11987654314', 14),
('11987654315', 15);

-- Inserir 15 endereços de clientes
INSERT INTO CLIENTES_ENDERECO (rua, bairro, numero, cidade, estado, CLIENTE_id_cliente) VALUES
('Rua A', 'Bairro 1', 10, 'São Paulo', 'SP', 1),
('Rua B', 'Bairro 2', 20, 'Rio de Janeiro', 'RJ', 2),
('Rua C', 'Bairro 3', 10, 'São Paulo', 'SP', 3),
('Rua D', 'Bairro 4', 20, 'Rio de Janeiro', 'RJ', 4),
('Rua E', 'Bairro 5', 10, 'São Paulo', 'SP', 5),
('Rua F', 'Bairro 6', 20, 'Rio de Janeiro', 'RJ', 6),
('Rua G', 'Bairro 7', 10, 'São Paulo', 'SP', 7),
('Rua H', 'Bairro 8', 20, 'Rio de Janeiro', 'RJ', 8),
('Rua I', 'Bairro 9', 10, 'São Paulo', 'SP', 9),
('Rua J', 'Bairro 10', 20, 'Rio de Janeiro', 'RJ', 10),
('Rua K', 'Bairro 11', 10, 'São Paulo', 'SP', 11),
('Rua L', 'Bairro 12', 20, 'Rio de Janeiro', 'RJ', 12),
('Rua M', 'Bairro 13', 10, 'São Paulo', 'SP', 13),
('Rua N', 'Bairro 14', 20, 'Rio de Janeiro', 'RJ', 14),
('Rua O', 'Bairro 15', 10, 'São Paulo', 'SP', 15);

-- Inserir 5 editoras
INSERT INTO EDITORA (nome_editora, nome_contato, email) VALUES
('Editora A', 'Carlos', 'contatoA@editora.com'),
('Editora B', 'Ana', 'contatoB@editora.com'),
('Editora C', 'Joao', 'contatoC@editora.com'),
('Editora D', 'Nicole', 'contatoD@editora.com'),
('Editora E', 'Nathalia', 'contatoD@editora.com');

-- Inserir 10 livros
INSERT INTO LIVRO (titulo, categoria, isbn, ano, valor, autor, EDITORA_id_editora) VALUES
('Livro 1', 'Ficção', '9781234567890', '2020-01-01', 59.90, 'Autor 1', 1),
('Livro 2', 'Romance', '9781234567891', '2019-05-10', 45.50, 'Autor 2', 2),
('Livro 3', 'Comédia', '9781234567892', '2020-01-02', 59.91, 'Autor 1', 1),
('Livro 4', 'Terror', '9781234567893', '2019-05-11', 45.51, 'Autor 2', 2),
('Livro 5', 'Suspense', '9781234567894', '2020-01-03', 59.91, 'Autor 1', 1),
('Livro 6', 'Infantil', '9781234567895', '2019-05-12', 45.51, 'Autor 2', 2),
('Livro 7', 'Ficção', '9781234567896', '2020-01-04', 59.91, 'Autor 1', 1),
('Livro 8', 'Romance', '9781234567897', '2019-05-13', 45.51, 'Autor 2', 2),
('Livro 9', 'Ficção', '9781234567898', '2020-01-05', 59.91, 'Autor 1', 1),
('Livro 10', 'Romance', '9781234567899', '2019-05-14', 45.51, 'Autor 2', 2);
