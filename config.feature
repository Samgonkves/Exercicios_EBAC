#language: PT 

Funcionalidade: Tela de login
Como cliente da EBAC SHOP 
Quero configurar o produto de acordo com meu tamanho e gosto, escolher a quantidade e inserir no carrinho

Contexto:
Dado que eu acesse a página da EBAC SHOP

Cenario: Configurar produto escolhido 
Quando eu escolher o produto e selecionar a cor, tamanho e quantidade máxima de 10 produtos
E inserir no carrinho
Então o deve aparecer a mensagem "Produtos adicionados no carrinho com sucesso" e o carrinho deve mostrar o meu produto 

Cenario: Comprando mais de 10 Itens 
Quando eu escolher o produto e selecionar a cor, tamanho e 15 itens 
E clicar em inserir no carrinho 
Então a mensagem "Seleção de itens acima do máximo" deve aparecer 

Cenario: Limpando seleção 
Quando eu selecionar a cor, e tamanho errado do produto 
E clicar em limpar seleção 
Então deve exibir a mensagem "Seleção limpa com sucesso"


Esquema do Cenario: Adicionar compra no carrinho 
Quando eu <configurar> o produto 
E <Clicar no botão> no carrinho 
Então deve exibir a <mensagem> de compra 

Exemplos: 
|configurar|Clicar no botão|mensagem
|"Cor, tamanho, 10 itens"|"adicionar"|"Adicionados no carrinho com sucesso"
|"Cor, tamanho, 10 itens"|"limpar"|"Seleção limpa com sucesso"
|"Cor, tamanho, 15 itens"|"adicionar"|"Seleção de itens acima do máximo"