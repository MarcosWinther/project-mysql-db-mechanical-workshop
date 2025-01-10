USE mechanical_workshop;

-- Inserções na tabela cliente
INSERT INTO cliente (nome, telefone, CPF, endereco) VALUES
('João Silva', '11999998888', '12345678901', 'Rua A, 123 - Centro'),
('Maria Souza', '21988887777', '98765432109', 'Av. B, 456 - Bairro Feliz'),
('Carlos Pereira', '31977776666', '11122233344', 'Rua C, 789 - Vila Nova'),
('Ana Oliveira', '41966665555', '44455566677', 'Travessa D, 101 - Jardim'),
('Pedro Santos', '51955554444', '77788899900', 'Rua E, 222 - Litoral'),
('Laura Mendes', '61944443333', '22233344455', 'Av. F, 333 - Planalto'),
('Rafael Gomes', '71933332222', '55566677788', 'Rua G, 444 - Montanha'),
('Sofia Castro', '81922221111', '88899900011', 'Travessa H, 555 - Floresta'),
('Lucas Lima', '91911110000', '99900011122', 'Rua I, 666 - Campo'),
('Isabela Costa', '11900009999', '00011122233', 'Av. J, 777 - Vale');

-- Inserções na tabela veiculo
INSERT INTO veiculo (placa, modelo, marca, ano, cliente_idCliente) VALUES
('ABC1234', 'Sedan X', 'Marca A', '2020', 1),
('DEF5678', 'Hatch Y', 'Marca B', '2018', 2),
('GHI9012', 'SUV Z', 'Marca C', '2022', 3),
('JKL3456', 'Caminhonete W', 'Marca D', '2015', 4),
('MNO7890', 'Esportivo V', 'Marca E', '2023', 5),
('PQR0123', 'Van U', 'Marca F', '2019', 6),
('STU4567', 'Moto T', 'Marca G', '2021', 7),
('VWX8901', 'Triciclo S', 'Marca H', '2017', 8),
('YZ12345', 'Quadriciclo R', 'Marca I', '2024', 9),
('AB23456', 'Patinete Q', 'Marca J', '2016', 10);

-- Inserções na tabela mecanico
INSERT INTO mecanico (nome, especialidade, endereco) VALUES
('Paulo Roberto', 'Motor', 'Rua K, 888 - Mecânica Central'),
('Fernanda Alves', 'Suspensão', 'Av. L, 999 - Oficina 1'),
('Ricardo Santos', 'Freios', 'Rua M, 1010 - Oficina 2'),
('Camila Oliveira', 'Elétrica', 'Travessa N, 1111 - Oficina 3'),
('Bruno Pereira', 'Transmissão', 'Rua O, 1212 - Oficina 4'),
('Juliana Costa', 'Ar Condicionado', 'Av. P, 1313 - Oficina 5'),
('Gustavo Mendes', 'Pneus', 'Rua Q, 1414 - Oficina 6'),
('Isabela Souza', 'Injeção Eletrônica', 'Travessa R, 1515 - Oficina 7'),
('Rodrigo Lima', 'Direção', 'Rua S, 1616 - Oficina 8'),
('Larissa Gomes', 'Diagnóstico', 'Av. T, 1717 - Oficina 9');


-- Inserções na tabela equipe
INSERT INTO equipe (nome, mecanico_codigo_mecanico) VALUES
('Equipe Alpha', 1),
('Equipe Beta', 2),
('Equipe Gama', 3),
('Equipe Delta', 4),
('Equipe Épsilon', 5),
('Equipe Zeta', 6),
('Equipe Eta', 7),
('Equipe Teta', 8),
('Equipe Iota', 9),
('Equipe Kappa', 10);


-- Inserções na tabela ordem_de_servico
INSERT INTO ordem_de_servico (data_emissao, data_conclusao_prevista, valor_total, status_os, veiculo_placa, cliente_idCliente, equipe_codigo_equipe) VALUES
('2023-01-10', '2023-01-15', 500.00, 1, 'ABC1234', 1, 1),
('2023-02-15', '2023-02-20', 750.00, 0, 'DEF5678', 2, 2),
('2023-03-20', '2023-03-25', 1200.00, 1, 'GHI9012', 3, 3),
('2023-04-25', '2023-04-30', 300.00, 0, 'JKL3456', 4, 4),
('2023-05-30', '2023-06-05', 900.00, 1, 'MNO7890', 5, 5),
('2023-06-10', '2023-06-15', 600.00, 0, 'PQR0123', 6, 6),
('2023-07-15', '2023-07-20', 150.00, 1, 'STU4567', 7, 7),
('2023-08-20', '2023-08-25', 400.00, 0, 'VWX8901', 8, 8),
('2023-09-25', '2023-09-30', 800.00, 1, 'YZ12345', 9, 9),
('2023-10-30', '2023-11-05', 1100.00, 0, 'AB23456', 10, 10);


-- Inserções na tabela peca
INSERT INTO peca (descricao, valor_unitario) VALUES
('Filtro de óleo', 25.00),
('Pastilha de freio', 80.00),
('Correia dentada', 60.00),
('Amortecedor', 120.00),
('Vela de ignição', 15.00),
('Bateria', 300.00),
('Pneu', 250.00),
('Filtro de ar', 20.00),
('Disco de freio', 90.00),
('Lâmpada', 10.00);


-- Inserções na tabela servico
INSERT INTO servico (idServico, descricao, valor_unitario) VALUES
(1, 'Troca de óleo', 80.00),
(2, 'Troca de freios', 150.00),
(3, 'Troca de correia dentada', 200.00),
(4, 'Troca de amortecedores', 250.00),
(5, 'Troca de velas', 100.00),
(6, 'Troca de bateria', 50.00),
(7, 'Troca de pneus', 100.00),
(8, 'Troca de filtro de ar', 60.00),
(9, 'Troca de disco de freio', 180.00),
(10, 'Troca de lâmpada', 30.00);

-- Inserções na tabela Ordem_de_Servico_solicita_Pecas
INSERT INTO Ordem_de_Servico_solicita_Pecas (ordem_de_servico_nr_os, peca_codigo_peca) VALUES
(1, 1), (1, 2),
(2, 3), (2, 4),
(3, 5), (3, 6),
(4, 7), (4, 8),
(5, 9), (5, 10),
(6, 1), (6, 3),
(7, 2), (7, 5),
(8, 4), (8, 6),
(9, 7), (9, 9),
(10, 8), (10, 10);

-- Inserções na tabela ordem_de_servico_solicita_servico
INSERT INTO ordem_de_servico_solicita_servico (ordem_de_servico_nr_os, servico_idServico) VALUES
(1, 1), (1, 2),
(2, 3), (2, 4),
(3, 5), (3, 6),
(4, 7), (4, 8),
(5, 9), (5, 10),
(6, 1), (6, 3),
(7, 2), (7, 5),
(8, 4), (8, 6),
(9, 7), (9, 9),
(10, 8), (10, 10);