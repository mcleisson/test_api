# README

Projeto TEST_CR_API
O projeto foi reconstruido do zero para facilitar a criação da API. As classes e métodos foram deixadas sem alterações. Todos os testes foram feitos
com o programa Postman. No projeto atual, foram incluídas as funcionalidades:

- Atributo name da Classe Customer em maiúsculo quando é efetuado o cadastro do novo cliente, ou seja, a cada novo
  cadastro, por mais que seja inserido com o nome em minúsculo, é inserido com as inicias em maiúsculo no banco de dados.

- Programado o Controller e a Model cart_item para cadastro de Carrinho e remoção da quantidade selecionada da tabela medicine (atributo :stock).

- Efetuada a correção do calculo de valor do stock, onde é apresentado apenas na tela e não é alterado no banco de dados. Os valores originais ainda
  permanecem os mesmos.

Things you may want to cover:

- Ruby version
  ruby 2.4.0p0
  Rails 5.2.4.3
  OBS.: verifique se as versões o Ruby e do Rails são as mesmas do projeto.

- Configuration
  Faça o download do projeto compactado ou via linha de comando do git.

- Database creation
  Após o download do projeto e/ou descompactar (caso tenha efetuado o download), acesse a pasta do projeto e rode os seguintes comandos via linha de comando:
  rake db:create (irá criar o banco de dados em sqlite3);
  rake db:migrate (irá criar as tabelas no banco de dados);

- How to run the test suite
  Ainda com a linha de comando aberta na pasta do projeto, rode o comando rails s, isso irá fazer o projeto subir o servidor do RoR.
  Faça o download do Programa Postman para efetuar os testes.

  Parâmetros para inserir o Customer:
  O link de acesso para o cadastro de um novo Customer é http://localhost:3000/customers/ com o método POST.
  Exemplo de parâmetro para inserir:
  {
  "name": "João da Silva"
  }

  Parâmetros para criar um Medicine(Medicamentos):
  O link de acesso para o cadastro de um novo Medicine é http://localhost:3000/medicines/ com o método POST.
  Exemplo de parâmetro para inserir:
  {
  "name": "paracetamol",
  "value": 5.5,
  "quantity": 100,
  "stock": 1000
  }

  Parâmetros para criar um Cart(Carrinho):
  O link de acesso para o cadastro de um novo Cart é http://localhost:3000/carts/ com o método POST.
  Exemplo de parâmetro para inserir:
  {
  "customer_id": "1"
  }

  Parâmetros para criar um Cart_Item(Item de Carrinho):
  O link de acesso para o cadastro de um novo Item de Carrinho é http://localhost:3000/cart_items/ com o método POST.
  Exemplo de parâmetro para inserir:
  {
  "cart_id": "1",
  "medicine_id": "1",
  "quantity": "5"
  }

  Para visualizar as informações e basta trocar o método de POST para GET e inserir a URL. Lembramos que este projeto
  foi criado como um API, sendo assim irá inserir apenas passando os parâmetros via JSON.
