use ecommerce

INSERT INTO cliente (nome, cep, rua, numerocasa) VALUES
    ('João Silva', 12345, 'Rua das Flores', 10),
    ('Maria Oliveira', 54321, 'Avenida Principal', 20),
    ('Carlos Santos', 67890, 'Rua do Comércio', 30),
    ('Ana Lima', 98765, 'Rua dos Bosques', 40),
    ('Fernando Oliveira', 23456, 'Avenida Central', 50),
    ('Sandra Rocha', 87654, 'Rua da Praia', 60),
    ('Antônio Souza', 34567, 'Travessa da Esperança', 70),
    ('Lúcia Pereira', 76543, 'Rua das Palmeiras', 80),
    ('Roberto Almeida', 45678, 'Avenida dos Girassóis', 90),
    ('Mariana Costa', 65432, 'Rua das Montanhas', 100);

	
INSERT INTO telefone (numero, cod_telefone, cod_cliente) VALUES
    ('123-456789', 1, 1),
    ('987-654321', 2, 2),
    ('111-222333', 3, 3),
    ('555-123456', 4, 4),
    ('777-999888', 5, 5),
    ('333-444555', 6, 6),
    ('888-777666', 7, 7),
    ('444-555666', 8, 8),
    ('222-111000', 9, 9),
    ('999-888777', 10, 10);

INSERT INTO email (email, cod_email, cod_cliente) VALUES
    ('joao@gmail.com', 1, 1),
    ('maria@yahoo.com', 2, 2),
    ('carlos@hotmail.com', 3, 3),
    ('ana@gmail.com', 4, 4),
    ('pedro@yahoo.com', 5, 5),
    ('lucia@hotmail.com', 6, 6),
    ('roberto@gmail.com', 7, 7),
    ('sandra@yahoo.com', 8, 8),
    ('fernando@hotmail.com', 9, 9),
    ('patricia@gmail.com', 10, 10);


INSERT INTO tb_fuc_funcionarios(fuc_nome, fuc_salario, fuc_cargo, fuc_datacontratacao) VALUES
    ('Carlos Silva', 5000.00, 'Vendedor', '2023-01-01'),
    ('Ana Oliveira', 6000.00, 'Vendedor', '2022-12-15'),
    ('Lucas Santos', 5500.00, 'Vendedor', '2023-02-01'),
    ('Mariana Lima', 6200.00, 'Vendedora', '2022-11-20'),
    ('Rodrigo Souza', 5800.00, 'Vendedor', '2023-03-10'),
    ('Fernanda Pereira', 7000.00, 'Analista de Sistemas', '2023-04-05'),
    ('Ricardo Almeida', 8000.00, 'Gerente de Marketing', '2023-04-10'),
    ('Gabriel Costa', 6500.00, 'Desenvolvedor', '2023-04-15'),
    ('Isabel Lima', 7500.00, 'Analista Financeira', '2023-04-20'),
    ('Patricia Silva', 9000.00, 'Coordenador de Projetos', '2023-04-25');


INSERT INTO tb_prod_produto(prod_nome, prod_descricao, prod_precoDeVenda, prod_qtd) VALUES
    ('Laptop Dell XPS 13', 'Notebook ultraleve e potente', 1499.99, 50),
    ('Smartphone Samsung Galaxy S21', 'Telefone Android avançado', 799.99, 30),
    ('Mouse Logitech MX Master 3', 'Mouse sem fio com ergonomia avançada', 99.99, 100),
    ('Teclado Mecânico Corsair K95 RGB Platinum', 'Teclado mecânico premium para jogos', 179.99, 20),
    ('Monitor LG UltraGear 27GL83A-B', 'Monitor de jogos QHD de 27 polegadas', 449.99, 15),
    ('SSD Samsung 970 EVO Plus 1TB', 'Unidade de estado sólido NVMe de alta velocidade', 149.99, 40),
    ('Impressora HP LaserJet Pro M404dn', 'Impressora laser monocromática', 199.99, 25),
    ('Câmera Sony Alpha a7 III', 'Câmera sem espelho Full Frame', 1999.99, 10),
    ('Fone de Ouvido Bose QuietComfort 35 II', 'Fones de ouvido com cancelamento de ruído', 299.99, 50),
    ('Roteador ASUS RT-AX88U', 'Roteador Wi-Fi 6 de alta velocidade', 299.99, 30),
    ('Tablet Apple iPad Pro 12.9', 'Tablet iOS com tela Retina', 1099.99, 20),
    ('Caixa de Som JBL Flip 5', 'Caixa de som Bluetooth à prova d-água', 89.99, 60);

INSERT INTO tb_est_estoque (est_quantidade, fuc_id, prod_id)
VALUES
    (50, 50, 60),
    (30, 51, 61),
    (100, 52, 62),
    (20, 53, 63),
    (15, 54, 64),
    (40, 50, 65),
    (25, 51, 66),
    (10, 52, 67),
    (50, 53, 68),
    (30, 54, 70),
	(20, 53, 71),
	(60, 52, 71);

	INSERT INTO tb_cop_compra (cop_datacompra, cod_cliente, prod_id, ate_id)
VALUES
    ('2023-11-15', 1, 60, 100),
    ('2023-11-16', 2, 61, 110),
    ('2023-11-17', 3, 63, 120),
    ('2023-11-18', 4, 65, 130),
    ('2023-11-19', 5, 71, 140),
    ('2023-11-20', 6, 70, 150),
    ('2023-11-21', 7, 62, 160),
    ('2023-11-22', 8, 64, 170),
    ('2023-11-23', 9, 60, 180),
    ('2023-11-24', 10, 63, 190);

		INSERT INTO tb_ate_atendimento (datatendimento, cod_cliente, fuc_id)
VALUES
    ('2023-11-15', 1, 52),
    ('2023-11-16', 2, 51),
    ('2023-11-17', 3, 52),
    ('2023-11-18', 4, 53),
    ('2023-11-19', 5, 54),
    ('2023-11-20', 6, 50),
    ('2023-11-21', 7, 54),
    ('2023-11-22', 8, 51),
    ('2023-11-23', 9, 54),
	('2023-11-24', 10, 53);