# Banco-de-Dados-Ecommerce 🛍
Criando um Banco de Dados para uma loja Eommerce, partindo do zero até a implementação no SQL.

# **Cenário**
<details> 

Você foi contratado para desenvolver um e-commerce de uma loja de produtos eletrônicos. O sistema de e-commerce possui um estoque de produtos, clientes que fazem compras e funcionários que gerenciam o estoque e atendem os clientes. Os principais requisitos do sistema são os seguintes:

•	Cada produto na loja deve ser registrado no sistema. Cada produto possui um código único, nome, descrição, preço de venda e quantidade em estoque.

•	Os clientes podem se inscrever na loja e fazer compras. Cada cliente possui um número de identificação único, nome, endereço, número de telefone e endereço de e-mail.

•	Os funcionários da loja também devem ser registrados no sistema.

•	Cada funcionário possui um número de identificação único, nome, cargo, salário e data de contratação.

•	Os clientes podem fazer compras na loja. Cada compra é registrada no sistema e inclui o cliente que fez a compra, os produtos comprados, a data da compra e o valor total da compra.

•	Os funcionários têm a capacidade de adicionar novos produtos ao estoque da loja e atualizar as informações dos produtos e também receber comissões de possíveis vendas.

Com essas informações conseguimos por a mão na massa e criar nosso MER, Modelo Entidade Relacionamento, bacisamente é um processo onde ligamos as entidades (produto, cliente, funcionários, etc...) e como irão se relacionar, também analismos e listamos os atributos principais dessas entidades.

</details>


  
# **Modelagem Conceitual, MODELO ENTIDADE RELACIONAMENTO:**

<details> 
  
Primeiro vamos entender o que é o banco de dados, o banco de dados  é como o cérebro por trás de um comércio bem-sucedido. Imagine uma loja onde cada produto, cliente e funcionário têm seu próprio papel vital, e todas as transações são registradas e organizadas de maneira eficiente. 

Vamos começar identificando as principais figuras desse sistema

**Produto:**
Os produtos são os protagonistas das prateleiras da loja. Cada um possui um código único, como um identificador especial. Eles têm nome, uma breve descrição, um preço de venda e, é claro, uma quantidade disponível em estoque. Estes são os heróis que os clientes buscam para satisfazer suas necessidades.

**Cliente:**
Os clientes são os visitantes frequentes da loja. Cada um tem uma identificação única, como uma carteira de membro exclusiva. Além disso, os clientes possuem informações pessoais, como nome, endereço, número de telefone e e-mail. Eles são os corações pulsantes da loja, trazendo vida e movimento a cada compra.

**Funcionário:**
Os funcionários são os guardiões da loja, trabalhando nos bastidores para garantir uma experiência suave. Cada funcionário tem seu próprio número de identificação único, como uma chave que abre portas. Com informações sobre nome, cargo, salário e data de contratação, os funcionários são os pilares que sustentam a operação da loja.

**Compra:**
As compras são como histórias que se desenrolam na loja. Cada transação é cuidadosamente registrada, incluindo quem fez a compra (o cliente), quais produtos foram adquiridos, a data da compra e o valor total gasto. É como um capítulo essencial no livro da loja, marcando o relacionamento entre produtos e clientes.

Ao unir essas entidades, o banco de dados cria uma narrativa coesa. Os produtos estão prontos para encontrar seus donos, os clientes exploram e fazem escolhas, os funcionários cuidam do funcionamento interno, e as comprasse tornam momentos memoráveis.

Agora sabendo disso iremos criar um Modelo Entidade Relacionamento, utilizando as regras que nosso querido Peter Chen criou, segue o nosso MER:


![image](https://github.com/ViniciusNC/Banco-de-Dados-Ecommerce/assets/100096038/f8d9a780-c482-40ee-9e19-27b67cdba4af)

</details>

# **Modelo MER DESCRITIVO:**

<details>

Neste momento devemos transcrever de maneira especifica e detalhada nosso MER para que facilite para nossa transformação para o DER e logo mais para a linguagem SQL

Atributos que são multivalorados serão transformadas em novas tabelas com ligação direta da tabela que ela derivou, por exemplo telefone e-mail, também devemos pensar em relações que não foram explicitamente criadas, por exemplo quando temos duas entidades com relacionamento de N:N devemos criar uma nova tabela que irá representar essa relação neste caso os relacionamentos COMPRA, ATENDIMENTO e ESTOQUE. Definido esses pontos podemos partir para a criação do MER Descritivo :)


**Produto:** (Cod_prod, nome, descrição, preço de venda, Qtde Estoque)

**CLIENTE:** (Cod_cliente, nome, Rua, Número da Casa, Bairro)

**Número Telefone:** (Número, Cod_cliente, Cod_Número)

**Email:** (Cod_Cliente, Cod_Email, Email)

**Funcionário:** (Cod_func, nome, cargo, salário, Dia, Mês, Ano)

**Atendimento:** (Cod_Atendimento, Cod_Func, Cod_Cliente, Dia, mês, ano)

**COMPRA:** (COD_Cliente, Cod_Produto, Dia, Mês, Ano, Valor_Total, Cod_Compra)

**Estoque:** (Cod_Funcionario, Cod_Produto)


</details>

# **Diagrama Entidade Relacionamento DER:** 

<details> 

O modelo lógico em bancos de dados é como o plano detalhado para construir o sistema. Aqui, definimos tabelas, colunas, chaves primárias, chaves estrangeiras e outros elementos específicos. É a fase mais próxima da implementação real, oferecendo uma visão detalhada do funcionamento do banco de dados. Em resumo, é onde transformamos a ideia geral em uma estrutura técnica pronta para ser usada no sistema de gerenciamento de banco de dados. Vamos agora criar essa representação mais concreta do nosso e-commerce!

![image](https://github.com/ViniciusNC/Banco-de-Dados-Ecommerce/assets/100096038/231e8637-d3a5-4055-82f5-240eae0047e1)


</details>


# **HORA DO SQL (CRUD):**

<details>

Agora que entendemos as principais entidades da nossa loja, é hora de dar vida a essa história no mundo dos bancos de dados utilizando a linguagem SQL, usaremos o SQL SERVER, bastante usado no mercado, gratuito e de fácil acesso e entendimento 

**Passo 1:**

Criação do Banco de Dados: 

![image](https://github.com/ViniciusNC/Banco-de-Dados-Ecommerce/assets/100096038/88a93e81-0295-489f-8356-aaad24f9555d)

Utilizamos o CREATE para criar o banco de dados, que nomeamos de ecommerce e logo após utilizamos o USE para estar utilizando ele.


**Passo 1.1:**

Criação das entidades, ou melhor, criação das nossas tabelas, conseguimos entender a importância de cada entidade extrair seus dados, criamos o MER e DER e agora se baseando neles iremos criar nossas tabelas referentes as entidades:

**Cliente:**

![image](https://github.com/ViniciusNC/Banco-de-Dados-Ecommerce/assets/100096038/938c6a3b-d04e-479d-840a-835bcc7daea3)

Agora como dito lá em cima, espero que esteja lembrando, os atributos multivalorados como o E-mail e Telefone, viraram uma nova tabela cada um, segue a criação deles, afinal temos que ter o contato dos nossos clientes:

**Telefone e E-mail:**

![image](https://github.com/ViniciusNC/Banco-de-Dados-Ecommerce/assets/100096038/d6340d55-fbd2-45a1-963b-ab750a1e0298)

Perceba que utilizamos a palavra reservada FOREIGN KEY que se traduz como chave estrangeira, afinal estamos pegando uma chave de outra tabela, no caso a tabela Cliente.

**Funcionários:**

Na criação desta tabela recebi uma dica de um amigo que na nomeação é melhor utilizarmos algo que deixe mais fácil a identificação da coluna e tabela, então usaremos tab(tabela)_(3 inicias que se referem a tabela)_(nome da tabela), tab_fuc_funcionarios, ficando assim nosso Create:

![image](https://github.com/ViniciusNC/Banco-de-Dados-Ecommerce/assets/100096038/0501083d-d49c-4966-ba0d-87ec90187d99)

Também podemos observar que diferente da tabela Cliente, que a coluna cod_cliente deve ser preenchida manualmente, a tabela funcionários colocamos a IDENTITY (50, 1) indicando que esta coluna será preenchida automaticamente, começando a partir do número 50 indo de 1 em 1. 

**Produto:**

![image](https://github.com/ViniciusNC/Banco-de-Dados-Ecommerce/assets/100096038/e2584f36-4a2b-472d-b491-8a86d8a15f50)

**Estoque:**

Na criação da tabela Estoque, como foi nos foi pedido no enunciado os funcionários tem a função de cadastrar o produto, por isso coloquei o fuc_id na tabela, para que possamos referenciar e verificar quem cadastrou o produto.

![image](https://github.com/ViniciusNC/Banco-de-Dados-Ecommerce/assets/100096038/82ed08e4-1650-4e6e-a0be-6e27320746e6)

**Atendimento:**

E por último e não menos importante a tabela de atendimento que ajudará a identificar funcionário atendeu qual cliente e com algumas consultas verificar se o mesmo ajudou em alguma venda, podendo assim ganhar alguma comissão referente a venda. 

![image](https://github.com/ViniciusNC/Banco-de-Dados-Ecommerce/assets/100096038/2fc32726-c7f4-47ed-95a1-848ee7f14945)

Terminado a criação das tabelas, caso tenha alguma alteração que deseje fazer no banco de dados segue algumas opções:

**Utilizando Alter:**

Por exemplo desejamos alterar o tamanho máximo do nome que o cliente pode colocar vamos utilizar o seguinte código: 

![image](https://github.com/ViniciusNC/Banco-de-Dados-Ecommerce/assets/100096038/84a0d185-4bd8-4273-b51f-b522d8b6136f)

O ALTER TABLE utilizamos para mostrar qualquer tabela desejamos alterar, logo em seguida usamos o ALTER COLUMN para selecionar a coluna que será alterada, no caso ‘nome’ e então colocamos o atributo que será alterado.

**Utilizando DROP:**

 Muito **_CUIDADO_**   com a seguinte opção você consegue apagar até mesmo o próprio banco de dados, lembre-se que o SQL não vai te perguntar se você realmente deseja fazer isso, ele te considera uma pessoa grandinha e confia em você, segue o código para deletar uma tabela

![image](https://github.com/ViniciusNC/Banco-de-Dados-Ecommerce/assets/100096038/ad45a0b9-dce3-4b11-bf5d-aebf1f5c9dce)

Bom essa são algumas opções, lembre-se que isso é apenas um resumo então não se esqueça de estudar! Recomendo que faça as alterações antes de inserir dados, pois pode lhe causar complicações caso tenha muitas tabelas para serem alteradas, então sem mais delongas vamos para o próximo passo. 


</details>

# **Inserção de Dados** ✍️

<details>

Esta é parte mais tranquila, porém devemos ter muita atenção pois caso seja inserido algum dado errado pode comprometer nossas análises futuras, então cuidado ok?

**Clientes:**

![image](https://github.com/ViniciusNC/Banco-de-Dados-Ecommerce/assets/100096038/3f32cf61-126f-456b-87b7-4e3c48ab2ee6)
 
Utilizamos o INSERT INTO, para inserir os dados na tabela que desejamos, bem fácil não é mesmo?

**Telefone:**

![image](https://github.com/ViniciusNC/Banco-de-Dados-Ecommerce/assets/100096038/bdc255d8-97aa-4850-b08f-5c3d7ad09593)

**Email:**

![image](https://github.com/ViniciusNC/Banco-de-Dados-Ecommerce/assets/100096038/ef67d2dd-b789-440a-9f79-18bb2b043df3)

Vamos dar uma olhadinha em como ficou nossa tabela? Para isso vamos utilizar o seguinte comando ‘select * from cliente’

![image](https://github.com/ViniciusNC/Banco-de-Dados-Ecommerce/assets/100096038/c509d24c-17e9-4443-84de-ac6be0dfb6e4)

Show de bolice 🐼, como diria nosso amigo panda, mas seguimos, pois, estamos quase no final.

**Funcionários:**

![image](https://github.com/ViniciusNC/Banco-de-Dados-Ecommerce/assets/100096038/5175ed93-7e42-4d24-89b7-30218c5266f7)

**Produtos:**

![image](https://github.com/ViniciusNC/Banco-de-Dados-Ecommerce/assets/100096038/b781efb4-597a-491d-8ee9-4c8756eac353)

**Estoque:**

![image](https://github.com/ViniciusNC/Banco-de-Dados-Ecommerce/assets/100096038/ac0631ad-251c-4ecd-ab34-ca713c95bf02)

**Compra:**

![image](https://github.com/ViniciusNC/Banco-de-Dados-Ecommerce/assets/100096038/3665d88b-ba53-4bde-b0d5-bccfab4a5725)

**Atendimento:**

![image](https://github.com/ViniciusNC/Banco-de-Dados-Ecommerce/assets/100096038/c3eaddea-f30a-4ef4-b031-28f24e40ee28)

E pronto, nosso banco de dados está pronto, porém ainda não acabamos, vamos fazer algumas consultas para que possamos verificar se tudo ficou certinho, vamos repetir aquele fizemos para ver os clientes que foram cadastrados, porém com as outras tabelas.

</details>

# Hora da seleção e consulta 🔎: 

<details>

**Funcionários:**

**Código:** _‘select * from tb_fuc_funcionarios‘_

**Resultado:**

![image](https://github.com/ViniciusNC/Banco-de-Dados-Ecommerce/assets/100096038/7e136e50-660b-4bb1-9e1b-dde0e329752e)

**Produtos:**

**Código:** _‘select * from tb_prod_produto‘_

**Resultado:**

![image](https://github.com/ViniciusNC/Banco-de-Dados-Ecommerce/assets/100096038/71452519-6afa-457f-a63f-5f83e466bb4d)

Eitaa, acabamos cadastrando bastante produtos.	

**Estoque:**

**Código:** _‘select * from tb_est_estoque‘_

**Resultado**

![image](https://github.com/ViniciusNC/Banco-de-Dados-Ecommerce/assets/100096038/8e753373-b0a6-4403-b01a-88f1b392bd15)

**Compra:**

**Código:** _‘select * from tb_cop_compra‘_

**Resultado:**

![image](https://github.com/ViniciusNC/Banco-de-Dados-Ecommerce/assets/100096038/cfc67174-68ba-4a3f-a36f-ab6f79d8df2c)

**Atendimento:**

**Código:** _‘select * from tb_ate_atendimento‘_

**Resultado**

![image](https://github.com/ViniciusNC/Banco-de-Dados-Ecommerce/assets/100096038/a524884e-1f9a-4005-8974-b55476a752ba)

Prontinho meus queridos, banco de dados finalizado, MER e DER criado, banco de dados criados, dados inseridos, agora é só pegar e analisar o que você deseja. Neste final irei fazer algumas consultas de nível intermediário para mostrar quanta coisa é possível, desde já agradeço a atenção 

</details>

# Relatórios 📊

<details>


**1.	Selecionando todos os clientes e seus e-mails:**
**Código:**

_SELECT c.nome, e.email
FROM cliente c
LEFT JOIN email e ON c.cod_cliente = e.cod_cliente;_

**Resultado**
![image](https://github.com/ViniciusNC/Banco-de-Dados-Ecommerce/assets/100096038/824bfec2-d8c8-4566-8268-9093dc363b96)

**2.	Selecionando produtos e sua quantidade total:**

**Código:**
_SELECT p.prod_nome, e.est_quantidade
FROM tb_prod_produto p
INNER JOIN tb_est_estoque e ON p.prod_id = e.prod_id;_

**Resultado**

![image](https://github.com/ViniciusNC/Banco-de-Dados-Ecommerce/assets/100096038/f4412608-430a-4761-9cbf-4a2f0f24fa1e)

**3.	Selecionando os clientes que fizeram compra, mostrando o nome e a data da compra:**

**Código**
_SELECT c.nome, c.cod_cliente, a.datatendimento
FROM cliente INNER JOIN tb_ate_atendimento a ON c.cod_cliente a.cod_cliente;_

**Resultado:**

![image](https://github.com/ViniciusNC/Banco-de-Dados-Ecommerce/assets/100096038/903c171e-bf37-49c2-8c68-8edc61771200)

**4.	Calculando média salarial dos funcionários:**

**Código:**

_SELECT AVG(fuc_salario) AS media_salarial
FROM tb_fuc_funcionarios;_

**Resultado:**

![image](https://github.com/ViniciusNC/Banco-de-Dados-Ecommerce/assets/100096038/5b71b924-5205-471d-9786-f013a160ee8b)

**5.	Listando os produtos com seu preço de venda e quantidade em estoque:**

**Código:**

_SELECT p.prod_nome, p.prod_precoDeVenda, e.est_quantidade
FROM tb_prod_produto p
INNER JOIN tb_est_estoque e ON p.prod_id = e.prod_id;_

**Resultado**

![image](https://github.com/ViniciusNC/Banco-de-Dados-Ecommerce/assets/100096038/43e48037-a8f4-4325-bd47-8d0d3ef73310)

**6.	Listando os clientes e seus números de telefones:**

**Código**

_SELECT c.nome, t.numero
FROM cliente c
LEFT JOIN telefone t ON c.cod_cliente = t.cod_cliente;_

**Resultado:**

![image](https://github.com/ViniciusNC/Banco-de-Dados-Ecommerce/assets/100096038/068a0b74-f805-46de-ade9-ed9a1fe28135)

**7.	Obtendo as informações de atendimento para um cliente específico (por exemplo, cod_cliente = 1):**

**Código:**

_SELECT a.ate_id, a.datatendimento, f.fuc_nome
FROM tb_ate_atendimento a
INNER JOIN tb_fuc_funcionarios f ON a.fuc_id = f.fuc_id
WHERE a.cod_cliente = 1;_

**Resultado:**

![image](https://github.com/ViniciusNC/Banco-de-Dados-Ecommerce/assets/100096038/fdb95bb8-727d-495d-88a6-97e347ba0755)

**8.	Encontrando o total gasto por cada cliente em todas as compras::**

**Código:**

_SELECT c.nome, SUM(p.prod_precoDeVenda) AS total_gasto
FROM cliente c
INNER JOIN tb_ate_atendimento a ON c.cod_cliente = a.cod_cliente
INNER JOIN tb_cop_compra co ON a.ate_id = co.ate_id
INNER JOIN tb_prod_produto p ON co.prod_id = p.prod_id
GROUP BY c.nome;_

**Resultado:**

![image](https://github.com/ViniciusNC/Banco-de-Dados-Ecommerce/assets/100096038/d34513ab-366f-4bb6-b7e7-591df2607d19)

**9.	Listando todos os produtos e suas informações de estoque, incluindo os que não têm entrada no estoque:**

**Código:**

_SELECT p.prod_nome, COALESCE(e.est_quantidade, 0) AS quantidade_em_estoque
FROM tb_prod_produto p
LEFT JOIN tb_est_estoque e ON p.prod_id = e.prod_id;_

**Resultado:**

![image](https://github.com/ViniciusNC/Banco-de-Dados-Ecommerce/assets/100096038/5f56f808-b302-4f32-a46d-82dc8f2303b1)

**10.	Encontrando o número de produtos em estoque para cada funcionário responsável:**

**Código**

_SELECT f.fuc_nome, COUNT(e.prod_id) AS num_produtos_em_estoque
FROM tb_fuc_funcionarios f
LEFT JOIN tb_est_estoque e ON f.fuc_id = e.fuc_id
GROUP BY f.fuc_nome;_

**Resultado**

![image](https://github.com/ViniciusNC/Banco-de-Dados-Ecommerce/assets/100096038/16125ba5-65bc-4eb5-83a8-d2755faca43e)

</details>
