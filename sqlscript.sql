CREATE TABLE Veiculos (    
    id_placa VARCHAR(7) NOT NULL PRIMARY KEY,    
    nome VARCHAR(255),    
    modelo VARCHAR(255),    
    ano INT,    
    fabricante VARCHAR(255),    
    n_passageiros INT,    
    cap_portamalas DECIMAL(10,2),    
    valor_dia DECIMAL(10,2),    
    valor_semana DECIMAL(10,2),    
    valor_mes DECIMAL(10,2)        
);

CREATE TABLE CLIENTE (  
    cpf BIGINT NOT NULL PRIMARY KEY,  
    nome VARCHAR(255),  
    cnh VARCHAR(1) CHECK (cnh IN ('A', 'B', 'C', 'D')),  
    data_nascimento DATE,  
    endereco_completo VARCHAR(500)  
);

CREATE TABLE Locacao (  
    n_locacao INT NOT NULL PRIMARY KEY,  
    data_inicio DATE,  
    data_termino DATE,  
    valor_pago DECIMAL(10,2),  
    ID_PLACA VARCHAR(7),  
    FOREIGN KEY (ID_PLACA) REFERENCES Veiculos(id_placa)  
);

CREATE TABLE MANUTENCAO (  
    n_manutencao INT NOT NULL PRIMARY KEY,
    ID_placa VARCHAR(7),  
    data_inicio DATE,  
    atividades_realizadas VARCHAR(500),  
    data_termino DATE,  
    custo DECIMAL(10,2),  
    FOREIGN KEY (ID_placa) REFERENCES Veiculos(id_placa)  
);

INSERT INTO Veiculos (id_placa, nome, modelo, ano, fabricante, n_passageiros, cap_portamalas, valor_dia, valor_semana, valor_mes)  
VALUES  
('ABC1234', 'Carro A', 'Modelo X', 2022, 'Fabricante1', 5, 400, 50, 300, 1200),
('DEF5678', 'Carro B', 'Modelo Y', 2021, 'Fabricante2', 4, 350, 45, 280, 1100),
('GHI9012', 'Carro C', 'Modelo Z', 2023, 'Fabricante3', 7, 450, 55, 350, 1500),
('JKL3456', 'Carro D', 'Modelo W', 2020, 'Fabricante4', 6, 500, 60, 400, 1800);

INSERT INTO Locacao (n_locacao, data_inicio, data_termino, valor_pago, ID_PLACA)  
VALUES 
(1, '2023-09-15', '2023-09-20', 250, 'ABC1234'),
(2, '2023-09-16', '2023-09-22', 270, 'DEF5678'),
(3, '2023-09-18', '2023-09-25', 320, 'GHI9012'),
(4, '2023-09-19', '2023-09-26', 380, 'JKL3456');

INSERT INTO MANUTENCAO (n_manutencao, ID_placa, data_inicio, atividades_realizadas, data_termino, custo)  
VALUES 
(1, 'ABC1234', '2023-09-10', 'Troca de óleo e filtros', '2023-09-12', 150),
(2, 'DEF5678', '2023-09-12', 'Reparo na suspensão', '2023-09-14', 200),
(3, 'GHI9012', '2023-09-14', 'Manutenção preventiva', '2023-09-16', 180),
(4, 'JKL3456', '2023-09-16', 'Substituição de freios', '2023-09-18', 220);

INSERT INTO CLIENTE (cpf, nome, cnh, data_nascimento, endereco_completo)  
VALUES 
(12345678901, 'Cliente A', 'A', '1990-05-15', 'Rua A, Cidade A, Estado A'),
(23456789012, 'Cliente B', 'B', '1985-03-20', 'Rua B, Cidade B, Estado B'),
(34567890123, 'Cliente C', 'C', '1995-12-10', 'Rua C, Cidade C, Estado C'),
(45678901234, 'Cliente D', 'D', '1988-08-05', 'Rua D, Cidade D, Estado D');