--Fazendo consultas de nivel intermediário no banco de dados---
USE ecommerce

SELECT c.nome, e.email
FROM cliente c
LEFT JOIN email e ON c.cod_cliente = e.cod_cliente;

SELECT p.prod_nome, e.est_quantidade
FROM tb_prod_produto p
INNER JOIN tb_est_estoque e ON p.prod_id = e.prod_id;

SELECT c.nome, c.cod_cliente, a.datatendimento
FROM cliente c
INNER JOIN tb_ate_atendimento a ON c.cod_cliente = a.cod_cliente;

SELECT AVG(fuc_salario) AS media_salarial
FROM tb_fuc_funcionarios;

SELECT p.prod_nome, p.prod_precoDeVenda, e.est_quantidade
FROM tb_prod_produto p
INNER JOIN tb_est_estoque e ON p.prod_id = e.prod_id;

SELECT c.nome, t.numero
FROM cliente c
LEFT JOIN telefone t ON c.cod_cliente = t.cod_cliente;

SELECT a.ate_id, a.datatendimento, f.fuc_nome
FROM tb_ate_atendimento a
INNER JOIN tb_fuc_funcionarios f ON a.fuc_id = f.fuc_id
WHERE a.cod_cliente = 1;

SELECT p.prod_nome, COALESCE(e.est_quantidade, 0) AS quantidade_em_estoque
FROM tb_prod_produto p
LEFT JOIN tb_est_estoque e ON p.prod_id = e.prod_id;


SELECT c.nome, SUM(p.prod_precoDeVenda) AS total_gasto
FROM cliente c
INNER JOIN tb_ate_atendimento a ON c.cod_cliente = a.cod_cliente
INNER JOIN tb_cop_compra co ON a.ate_id = co.ate_id
INNER JOIN tb_prod_produto p ON co.prod_id = p.prod_id
GROUP BY c.nome;

SELECT f.fuc_nome, COUNT(e.prod_id) AS num_produtos_em_estoque
FROM tb_fuc_funcionarios f
LEFT JOIN tb_est_estoque e ON f.fuc_id = e.fuc_id
GROUP BY f.fuc_nome;


ALTER TABLE cliente
ALTER COLUMN nome VARCHAR(50);

DROP TABLE cliente