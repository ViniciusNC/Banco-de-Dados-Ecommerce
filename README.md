# Banco-de-Dados-Ecommerce
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
