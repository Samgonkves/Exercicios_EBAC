#language: pt

Funcionalidade: Tela de login
Como cliente da EBAC SHOP 
Logar para vizualizar meus pedidos 
 

Contexto:
Dado que eu acesse a página da EBAC SHOP


Cenário: Login na plataforma 
Quando eu inserir o usuário "saramariags@ebac.com"
E senha "Eb@cshop3"
Então o usuário deve ser direcionado a tela de Checkout
Se o usuário ou senha for digitado errado deve exibir a mensagem "usuário ou senha inválidas"

Cenario: Login com senha inválido 
Quando eu inserir o usuário "saramariags@ebac.com"
E senha "ebacshop"
Então deve exibir a mensagem de erro "usuário ou senha inválidas"

Esquema do Cenário: Login na plataforma 
Quando eu digitar o <usuario> 
E a <senha> 
Então devo ser direcionado a tela de <Checkout>

Exemplos: 
|usuario|senha|Checkout ou mensagem
|"saramariags@ebac.com"|"Eb@cshop3"|Exibe tela de Checkout
|"saramariags@ebac.com"|"ebacshop"|"usuário ou senha inválidas"
|"saramaria@ebac.com"|"Eb@cshop3"|"usuário ou senha inválidas"


