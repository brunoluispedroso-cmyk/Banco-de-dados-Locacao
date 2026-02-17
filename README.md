# 🚗 Banco de Dados: Sistema de Locadora

Este repositório contém a modelagem e o script SQL para um sistema de gestão de locação de veículos, incluindo controle de clientes, frota, contratos e manutenção.
**Confira o planejamento detalhado:** [Trabalho, Banco de dados.pdf](./Trabalho,%20Banco%20de%20dados.pdf)

## 📐 Modelo Entidade-Relacionamento (DER)
O diagrama abaixo representa a estrutura de dados e as relações entre as tabelas (Veículos, Clientes, Locação e Manutenção):

# Feito a Mão 
<img width="1547" height="871" alt="image" src="https://github.com/user-attachments/assets/56a582c6-aa1d-4010-b087-42be5b532ae8" />

# Utilizando DB Diagram 
<img width="1055" height="816" alt="image" src="https://github.com/user-attachments/assets/3d0040fd-afbf-40eb-8243-c4efe33c27a6" />


---

## 💻 Tecnologias
- **MySQL**: Linguagem de consulta e estruturação.
- **MySQL Workbench**: Ferramenta de modelagem e administração.

## 📊 Exemplos de Consultas
Para testar o banco, você pode usar os seguintes comandos após rodar o script:

### Listar todos os carros e suas respectivas manutenções:
```sql
SELECT v.modelo, v.id_placa, m.atividades_realizadas, m.custo
FROM Veiculos v
JOIN MANUTENCAO m ON v.id_placa = m.id_placa;
```
### Resultado da Consulta
<img width="1629" height="228" alt="image" src="https://github.com/user-attachments/assets/b813eaed-9b61-49fa-871d-c61a637e08c7" />

### Consultar clientes que alugaram veículos:
```sql
SELECT c.nome, l.data_inicio, v.modelo
FROM CLIENTE c
JOIN Locacao l ON l.id_placa = l.id_placa
JOIN Veiculos v ON l.id_placa = v.id_placa;
```
### Resultado da Consulta
<img width="1919" height="770" alt="image" src="https://github.com/user-attachments/assets/659d064d-7f5c-4719-a03f-081de2cb3043" />

### Faturamento Total por Veículo
```sql
SELECT v.modelo, v.id_placa, SUM(l.valor_pago) AS faturamento_total
FROM Veiculos v
JOIN Locacao l ON v.id_placa = l.id_placa
GROUP BY v.modelo, v.id_placa;
```
### Resultado da Consulta
<img width="1626" height="224" alt="image" src="https://github.com/user-attachments/assets/eda34b75-8c4d-498f-b12b-5c0999cb6e09" />

### Histórico de Manutenções Caras (Acima de R$ 180,00)
```sql
SELECT id_placa, atividades_realizadas, custo
FROM MANUTENCAO
WHERE custo > 180
ORDER BY custo DESC;
```
### Resultado da Consulta
<img width="1626" height="138" alt="image" src="https://github.com/user-attachments/assets/b9470060-8441-4821-91b6-a133b391b379" />



