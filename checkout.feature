#language: pt

Funcionalidade: Tela de checkout
Como cliente da EBAC SHOP 
Finalizar o cadastro para concluir a compra 

Cenário:  Checkout com sucesso 
Quando eu clicar cadastrar 
E preencer todos os campos obrigatórios com dados válidos 
Então deve exibir a mensagem "usuário cadastrado com sucesso"

Cenário: Email inválido no checkout 
Quando eu clicar em cadastrar 
E preencher todos os dados e digitar email inválido 
Então deve exibir mensagem "Email inválido"

Cenário: Preenchimento inconpleto no checkout
Quando eu clicar em cadastrar 
E preencher apenas nome e telefone e email válido 
Então deve exibir a mensagem "Não houve o preenchimento de todos os campos obrigatórios"

Esquema do Cenário: Cadastro de usuário 
Quando eu clicar em cadastrar e <preencer todos os dados>
E digitar um <email> válido
Então deve aparecer a <mensagem>

Exemplos: 
|preencer todos os dados|email|mensagem
|"Nome, endereço e telefone"|"saramariags@ebac.com"|"usuário cadastrado com sucesso"
|"Nome, endereço e telefone"|"saramaria@ebac.com"|"Email inválido"
|"Nome e telefone"|"saramariags@ebac.com"|"Não houve o preenchimento de todos os campos obrigatórios"
