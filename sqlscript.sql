CREATE TABLE Veiculos (   
    id_placa varchar(7) NOT NULL PRIMARY KEY,   
    nome varchar(255),   
    modelo varchar(255),   
    ano int,   
    fabricante varchar(255),   
    n_passageiros int,   
    cap_portamalas number,   
    valor_dia number,   
    valor_semana number,   
    valor_mes number   
       
) ;

CREATE TABLE Locacao (  
    n_locacao number NOT NULL PRIMARY KEY,  
    data_inicio date,  
    data_termino date,  
    valor_pago number,  
    ID_PLACA varchar(7),  
    FOREIGN KEY (ID_PLACA) REFERENCES VEICULOS(ID_PLACA)  
) ;

CREATE TABLE MANUTENCAO (  
    n_veiculo number not null primary key,  
    ID_placa varchar(7),  
    Foreign key (ID_PLACA) references VEICULOS(ID_PLACA),  
    data_inicio date,  
    atividades_realizadas varchar(500),  
    data_termino date,  
    custo number  
    );

INSERT INTO Veiculos (id_placa, nome, modelo, ano, fabricante, n_passageiros, cap_portamalas, valor_dia, valor_semana, valor_mes)  
VALUES  
('ABC1234', 'Carro A', 'Modelo X', 2022, 'Fabricante1', 5, 400, 50, 300, 1200);

INSERT INTO Veiculos (id_placa, nome, modelo, ano, fabricante, n_passageiros, cap_portamalas, valor_dia, valor_semana, valor_mes)  
VALUES  
('DEF5678', 'Carro B', 'Modelo Y', 2021, 'Fabricante2', 4, 350, 45, 280, 1100);

INSERT INTO Veiculos (id_placa, nome, modelo, ano, fabricante, n_passageiros, cap_portamalas, valor_dia, valor_semana, valor_mes)  
VALUES  
('GHI9012', 'Carro C', 'Modelo Z', 2023, 'Fabricante3', 7, 450, 55, 350, 1500);

INSERT INTO Veiculos (id_placa, nome, modelo, ano, fabricante, n_passageiros, cap_portamalas, valor_dia, valor_semana, valor_mes)  
VALUES  
('JKL3456', 'Carro D', 'Modelo W', 2020, 'Fabricante4', 6, 500, 60, 400, 1800);

INSERT INTO Locacao (n_locacao, data_inicio, data_termino, valor_pago, ID_PLACA)  
VALUES (1, TO_DATE('2023-09-15', 'YYYY-MM-DD'), TO_DATE('2023-09-20', 'YYYY-MM-DD'), 250, 'ABC1234');

INSERT INTO Locacao (n_locacao, data_inicio, data_termino, valor_pago, ID_PLACA)  
VALUES (2, TO_DATE('2023-09-16', 'YYYY-MM-DD'), TO_DATE('2023-09-22', 'YYYY-MM-DD'), 270, 'DEF5678');

INSERT INTO Locacao (n_locacao, data_inicio, data_termino, valor_pago, ID_PLACA)  
VALUES (3, TO_DATE('2023-09-18', 'YYYY-MM-DD'), TO_DATE('2023-09-25', 'YYYY-MM-DD'), 320, 'GHI9012');

INSERT INTO Locacao (n_locacao, data_inicio, data_termino, valor_pago, ID_PLACA)  
VALUES (4, TO_DATE('2023-09-19', 'YYYY-MM-DD'), TO_DATE('2023-09-26', 'YYYY-MM-DD'), 380, 'JKL3456');

INSERT INTO MANUTENCAO (n_veiculo, ID_placa, data_inicio, atividades_realizadas, data_termino, custo)  
VALUES (1, 'ABC1234', TO_DATE('2023-09-10', 'YYYY-MM-DD'), 'Troca de óleo e filtros', TO_DATE('2023-09-12', 'YYYY-MM-DD'), 150);

INSERT INTO MANUTENCAO (n_veiculo, ID_placa, data_inicio, atividades_realizadas, data_termino, custo)  
VALUES (2, 'DEF5678', TO_DATE('2023-09-12', 'YYYY-MM-DD'), 'Reparo na suspensão', TO_DATE('2023-09-14', 'YYYY-MM-DD'), 200);

INSERT INTO MANUTENCAO (n_veiculo, ID_placa, data_inicio, atividades_realizadas, data_termino, custo)  
VALUES (3, 'GHI9012', TO_DATE('2023-09-14', 'YYYY-MM-DD'), 'Manutenção preventiva', TO_DATE('2023-09-16', 'YYYY-MM-DD'), 180);

INSERT INTO MANUTENCAO (n_veiculo, ID_placa, data_inicio, atividades_realizadas, data_termino, custo)  
VALUES (4, 'JKL3456', TO_DATE('2023-09-16', 'YYYY-MM-DD'), 'Substituição de freios', TO_DATE('2023-09-18', 'YYYY-MM-DD'), 220);

CREATE TABLE CLIENTE (  
    cpf NUMBER(11) NOT NULL PRIMARY KEY,  
    nome VARCHAR2(255),  
    cnh VARCHAR2(1) CHECK (cnh IN ('A', 'B', 'C', 'D')),  
    data_nascimento DATE,  
    endereco_completo VARCHAR2(500)  
);

INSERT INTO CLIENTE (cpf, nome, cnh, data_nascimento, endereco_completo)  
VALUES (12345678901, 'Cliente A', 'A', TO_DATE('1990-05-15', 'YYYY-MM-DD'), 'Rua A, Cidade A, Estado A');

INSERT INTO CLIENTE (cpf, nome, cnh, data_nascimento, endereco_completo)  
VALUES (23456789012, 'Cliente B', 'B', TO_DATE('1985-03-20', 'YYYY-MM-DD'), 'Rua B, Cidade B, Estado B');

INSERT INTO CLIENTE (cpf, nome, cnh, data_nascimento, endereco_completo)  
VALUES (34567890123, 'Cliente C', 'C', TO_DATE('1995-12-10', 'YYYY-MM-DD'), 'Rua C, Cidade C, Estado C');

INSERT INTO CLIENTE (cpf, nome, cnh, data_nascimento, endereco_completo)  
VALUES (45678901234, 'Cliente D', 'D', TO_DATE('1988-08-05', 'YYYY-MM-DD'), 'Rua D, Cidade D, Estado D');

