#language: pt


Funcionalidade: Login na plataforma
            Como cliente da EBAC-SHOP
            Quero fazer login (autenticação) na plataforma
            Para visualizar meus pedidos

            Contexto:
            Dado que eu acesse a página do carrinho na EBAC-SHOP

            Cenário: Ao inserir dados válidos deve ser direcionado para a tela de checkout
            Quando eu digitar o usuario "melissa@ebac-shop.com.br"
            E a senha "carrinho@098"
            Então deve direcionar para a página "meus pedidos"

            Cenário: Ao inserir um dos campos inválidos deve exibir uma mensagem de alerta “Usuário ou senha inválidos”
            Quando eu digitar o usuario "mel@ebac.com.br"
            E a senha "carrinho@0123"
            Então deve exibir uma mensagem de "senha ou usuário inválidos"

            Esquema do Cenário: Autenticar múltiplos usuários
            Quando eu digitar o <usuario>
            E a <senha>
            Então deve direcionar para a página "meus pedidos"

            Exemplos:
            | usuario                       | senha          | mensagem       |
            | "melissa@ebac-shop.com.br"    | "carrinho@098" | "meus pedidos" |
            | "eduardo@ebac-shop.com.br"    | "123@compras"  | "meus pedidos" |
            | "samantinha@ebac-shop.com.br" | "compras$432"  | "meus pedidos" |
            | "leopoldo@ebac-shop.com.br"   | "comprar#123"  | "meus pedidos" |
            | "janice@ebac-shop.com.br"     | "carrinho@123" | "meus pedidos" |


