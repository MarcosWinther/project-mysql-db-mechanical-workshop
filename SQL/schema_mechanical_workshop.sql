CREATE DATABASE mechanical_workshop;

USE mechanical_workshop;

CREATE TABLE cliente (
    idCliente INT AUTO_INCREMENT NOT NULL PRIMARY KEY,
    nome VARCHAR(45),
    telefone VARCHAR(20),
    CPF VARCHAR(45),
    endereco VARCHAR(255)
);

ALTER TABLE cliente AUTO_INCREMENT=1;

CREATE TABLE veiculo (
    placa CHAR(10) PRIMARY KEY,
    modelo VARCHAR(45),
    marca VARCHAR(45),
    ano VARCHAR(45),
    cliente_idCliente INT,
    CONSTRAINT fk_veiculo_cliente FOREIGN KEY (cliente_idCliente) REFERENCES cliente(idCliente)
);

CREATE TABLE mecanico (
    codigo_mecanico INT AUTO_INCREMENT NOT NULL PRIMARY KEY,
    nome VARCHAR(45),
    especialidade VARCHAR(45),
    endereco VARCHAR(255)
);

ALTER TABLE mecanico AUTO_INCREMENT=1;

CREATE TABLE equipe (
    codigo_equipe INT AUTO_INCREMENT NOT NULL PRIMARY KEY,
    nome VARCHAR(45),
    mecanico_codigo_mecanico INT,
    CONSTRAINT fk_mecanico_equipe FOREIGN KEY (mecanico_codigo_mecanico) REFERENCES mecanico(codigo_mecanico)
);

ALTER TABLE equipe AUTO_INCREMENT=1;

CREATE TABLE ordem_de_servico (
    nr_os INT AUTO_INCREMENT NOT NULL PRIMARY KEY,
    data_emissao DATE,
    data_conclusao_prevista DATE,
    valor_total FLOAT,
    status_os BOOL,
    veiculo_placa CHAR(10),
    cliente_idCliente INT,
    equipe_codigo_equipe INT,
    CONSTRAINT fk_os_veiculo_cliente FOREIGN KEY (veiculo_placa) REFERENCES veiculo(placa),
    CONSTRAINT fk_os_cliente FOREIGN KEY (cliente_idCliente) REFERENCES Cliente(idCliente),
    CONSTRAINT fk_os_equipe FOREIGN KEY (equipe_codigo_equipe) REFERENCES equipe(codigo_equipe)
);

ALTER TABLE ordem_de_servico AUTO_INCREMENT=1;

CREATE TABLE peca (
    codigo_peca INT AUTO_INCREMENT NOT NULL PRIMARY KEY,
    descricao VARCHAR(45),
    valor_unitario FLOAT
);

ALTER TABLE peca AUTO_INCREMENT=1;

CREATE TABLE servico (
    idServico INT PRIMARY KEY,
    descricao VARCHAR(45),
    valor_unitario FLOAT
);

ALTER TABLE servico AUTO_INCREMENT=1;

CREATE TABLE Ordem_de_Servico_solicita_Pecas (
    ordem_de_servico_nr_os INT,
    peca_codigo_peca INT,
    PRIMARY KEY (ordem_de_servico_nr_os, peca_codigo_peca),
    CONSTRAINT fk_os_solicita_peca FOREIGN KEY (ordem_de_servico_nr_os) REFERENCES ordem_de_servico(nr_os),
    CONSTRAINT fk_os_peca FOREIGN KEY (peca_codigo_peca) REFERENCES peca(codigo_peca)
);

CREATE TABLE ordem_de_servico_solicita_servico (
    ordem_de_servico_nr_os INT,
    servico_idServico INT,
    PRIMARY KEY (ordem_de_servico_nr_os, servico_idServico),
    CONSTRAINT fk_os_solicita_servico FOREIGN KEY (ordem_de_servico_nr_os) REFERENCES ordem_de_servico(nr_os),
    CONSTRAINT fk_os_servico FOREIGN KEY (servico_idServico) REFERENCES servico(idServico)
);