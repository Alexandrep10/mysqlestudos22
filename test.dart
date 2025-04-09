CREATE TABLE clientes (
id INT AUTO_INCREMENT PRIMARY KEY,
nome VARCHAR (100) NOT NULL,
telefone CHAR(14) NOT NULL,
cpf CHAR(11) NOT NULL UNIQUE
);

CREATE TABLE clientes_enderecos (
	id INT AUTO_INCREMENT PRIMARY KEY,
    logradouro VARCHAR(150) NOT NULL,
    numero char (4) NOT NULL DEFAULT 'S/N',
    complemento VARCHAR(45),
    bairro VARCHAR(100) NOT NULL,
    cidade VARCHAR(100) NOT NULL,
	estado char (2) NOT NULL,
    cep CHAR (8) NOT NULL,
    principal TINYINT(1) NOT NULL DEFAULT 0,
    clientes_id INT NOT NULL,
	CONSTRAINT `fk_clientes_enderecos`
    FOREIGN KEY (clientes_id) REFERENCES clientes (id)
);

CREATE TABLE funcionarios (
	id INT AUTO_INCREMENT PRIMARY KEY,
    nome VARCHAR(100) NOT NULL,
    cpf CHAR(11) NOT NULL UNIQUE
);

CREATE TABLE funcionarios_funcoes (
	id INT AUTO_INCREMENT PRIMARY KEY,
    funcao VARCHAR(50) NOT NULL,
    cbo CHAR(7) NOT NULL,
    descricao VARCHAR (255),
    funionarios_id INT NOT NULL,
    CONSTRAINT `fk_funcionarios_funcoes`
    FOREIGN KEY (funcionarios_id) REFERENCES funcionarios (id)
		ON DELETE RESTRICT
        ON UPDATE CASCADE
);

CREATE TABLE pedidos (
	id INT AUTO_INCREMENT  PRIMARY KEY,
    `status` TINYINT(1) NOT NULL DEFAULT 0,
    data_hora TIMESTAMP NOT NULL DEFAULT CURRENT_TIMESTAMP,
    tota DOUBLE NOT NULL DEFAULT 0,
    nf VARCHAR (255),
    clientes_id INT NOT NULL,
    funcionarios_id INT NOT NULL,
    CONSTRAINT `fk_pedidos_clientes`
		FOREIGN KEY (clientes_id)
			REFERENCES clientes (id)
            ON DELETE NO ACTION,
            
	CONSTRAINT `fk_pedidos_funcionarios`
		FOREIGN KEY (funcionarios_id)
			REFERENCES funcionarios(id)
			ON DELETE NO ACTION 
            ON UPDATE NO ACTION
);

CREATE TABLE pedido_itens (
	id INT AUTO_INCREMENT PRIMARY KEY,
    produto VARCHAR(150) NOT NULL,
	quantidade INT NOT NULL,
    valor DOUBLE NOT NULL,
    pedidos_id INT NOT NULL,
    pedidos_clientes_id INT NOT NULL,
    CONSTRAINT `fk_pedidos_itens`
		FOREIGN KEY (pedidos_id, pedidos_clientes_id)
			REFERENCES (id, clientes_id)
		ON DELETE NO ACTION
        ON UPDATE NO ACTION
);

CREATE TABLE categorias (
	id INT PRIMARY KEY AUTO_INCREMENT,
    titulo VARCHAR(45) NOT NULL,
    ativo TINYINT (1) NOT NULL DEFAULT 1
	CONSTRAINT `fk_categorias`

);

CREATE TABLE produtos (
	id INT PRIMARY KEY AUTO_INCREMENT,
    nome VARCHAR(100) NOT NULL,
    descricao VARCHAR(100),
    preco DOUBLE NOT NULL DEFAULT 0,
    from_categorias INT NOT NULL,
    CONSTRAINT `fk_categorias`
    FOREIGN KEY (from_categorias) REFERENCES categorias (id)
		ON UPDATE RESTRICT
		ON DELETE RESTRICT 

)