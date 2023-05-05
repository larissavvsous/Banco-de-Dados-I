CREATE DATABASE tabelas;
USE tabelas;

CREATE TABLE imoveis (
  id INT(11) UNSIGNED AUTO_INCREMENT PRIMARY KEY,
  nome VARCHAR(255) NOT NULL,
  preco_venda DECIMAL(20,8) NOT NULL,
  valor_aluguel DECIMAL(20,8) NOT NULL
);

INSERT INTO imoveis (nome, preco_venda, valor_aluguel) VALUES ('Chácara Florescer', 1.500000, 1700);
INSERT INTO imoveis (nome, preco_venda, valor_aluguel) VALUES ('Cobertura Skyline', 2.000000, 2000);
INSERT INTO imoveis (nome, preco_venda, valor_aluguel) VALUES ('Sítio Verdejante', 3.000000, 2500);
INSERT INTO imoveis (nome, preco_venda, valor_aluguel) VALUES ('Casa Serenidade', 800000, 1200);

CREATE TABLE aluguel (
  id INT PRIMARY KEY AUTO_INCREMENT,
  data_aluguel DATE NOT NULL,
  valor_aluguel DECIMAL(20, 8) NOT NULL,
  data_vencimento DATE NOT NULL
);
INSERT INTO aluguel (data_aluguel, valor_aluguel, data_vencimento) VALUES ('2020-07-20', 1700, '2021-07-20');
INSERT INTO aluguel (data_aluguel, valor_aluguel, data_vencimento) VALUES ('2019-08-30', 2000, '2020-08-30');
INSERT INTO aluguel (data_aluguel, valor_aluguel, data_vencimento) VALUES ('2022-05-02', 2500, '2023-05-02');
INSERT INTO aluguel (data_aluguel, valor_aluguel, data_vencimento) VALUES ('2021-04-12', 1200, '2021-04-12');

CREATE TABLE inquilino (
  id INT PRIMARY KEY AUTO_INCREMENT,
  nome VARCHAR(255) NOT NULL
);
INSERT INTO inquilino (nome) VALUES ('Diego Amleida');
INSERT INTO inquilino (nome) VALUES ('Larissa Pereira');
INSERT INTO inquilino (nome) VALUES ('André Rodrigue');
INSERT INTO inquilino (nome) VALUES ('Rafaela Pereira');

CREATE TABLE corretor (
  id INT PRIMARY KEY AUTO_INCREMENT,
  nome VARCHAR(255) NOT NULL,
  telefone VARCHAR(20)
);
INSERT INTO corretor (nome, telefone) VALUES ('Ana Paula', 9247015509);
INSERT INTO corretor (nome, telefone) VALUES ('Marcos Vinicius', 7784932675);
INSERT INTO corretor (nome, telefone) VALUES ('Juliana Silva Souza', 7123805402);
INSERT INTO corretor (nome, telefone) VALUES ('Bruno Silva', 5559831267);

CREATE TABLE proprietario (
  id INT PRIMARY KEY AUTO_INCREMENT,
  nome VARCHAR(255) NOT NULL,
  num_propriedades INT
);
INSERT INTO proprietario (nome, num_propriedades) VALUES ('Carlos Alberto', 5);
INSERT INTO proprietario (nome, num_propriedades) VALUES ('Henrique Simão', 3);
INSERT INTO proprietario (nome, num_propriedades) VALUES ('José Bernardes', 6);
INSERT INTO proprietario (nome, num_propriedades) VALUES ('Junior Silva', 9);

select*from imoveis;
select*from corretor;
select*from proprietario;
select*from inquilino;
select*from aluguel;