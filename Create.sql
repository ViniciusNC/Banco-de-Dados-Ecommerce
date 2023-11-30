-- CREATE TABLES -- 

create database ecommerce;

use ecommerce;


CREATE TABLE cliente (
    cod_cliente INT PRIMARY KEY IDENTITY(1,1),
    nome VARCHAR(30),
    cep INT,
    rua VARCHAR(30),
    numerocasa INT
);


CREATE TABLE telefone (
    numero varchar(20),
    cod_telefone INT PRIMARY KEY,
    cod_cliente INT,
    FOREIGN KEY (cod_cliente) REFERENCES cliente(cod_cliente)
);

CREATE TABLE email (
    email VARCHAR(30),
    cod_email INT PRIMARY KEY,
    cod_cliente INT,
    FOREIGN KEY (cod_cliente) REFERENCES cliente(Cod_cliente)
);



CREATE TABLE tb_fuc_funcionarios (
    fuc_id INT PRIMARY KEY IDENTITY(50,1),
    fuc_nome VARCHAR(30),
    fuc_salario FLOAT,
    fuc_cargo VARCHAR(50),
    fuc_datacontratacao DATE
);

select * from cliente
select * from tb_fuc_funcionarios
select * from tb_prod_produto
select * from tb_est_estoque


CREATE TABLE tb_prod_produto (
    prod_id INT PRIMARY KEY IDENTITY(60,1),
	prod_nome VARCHAR(50),
    prod_descricao TEXT,
    prod_precoDeVenda FLOAT,
	prod_qtd INT );


CREATE TABLE tb_est_estoque (
    est_id INT PRIMARY KEY IDENTITY(200,1),
	est_quantidade INT,
	fuc_id INT,
    prod_id INT,
    FOREIGN KEY (fuc_id) REFERENCES tb_fuc_funcionarios(fuc_id),
    FOREIGN KEY (prod_id) REFERENCES tb_prod_produto(prod_id) );

	select * from tb_ate_atendimento

CREATE TABLE tb_ate_atendimento (
    datatendimento DATE,
    cod_cliente INT,
    fuc_id INT,
    ate_id INT PRIMARY KEY IDENTITY(100, 10),
    FOREIGN KEY (cod_cliente) REFERENCES cliente(cod_cliente),
    FOREIGN KEY (fuc_id) REFERENCES tb_fuc_funcionarios(fuc_id)
);


CREATE TABLE tb_cop_compra (
    cop_datacompra DATE,
    cod_cliente INT,
    prod_id INT,
	ate_id INT,
    cop_id INT PRIMARY KEY IDENTITY(300, 1),
    FOREIGN KEY (prod_id) REFERENCES tb_prod_produto(prod_id),
    FOREIGN KEY (cod_cliente) REFERENCES cliente(cod_cliente),
	FOREIGN KEY (ate_id) REFERENCES tb_ate_atendimento(ate_id)
);






	