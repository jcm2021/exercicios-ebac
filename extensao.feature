            #language: pt

            Funcionalidade: Configurar produto
            Como cliente da EBAC-SHOP
            Quero configurar meu produto de acordo com meu tamanho e gosto
            E escolher a quantidade
            Para depois inserir no carrinho

            Contexto:
            Dado que eu acesse a página do meu produto na EBAC-SHOP

            Cenário: Seleção de cor, tamanho e quantidade devem ser obrigatórios
            Quando eu selecionar o tamanho, a cor
            E a quantidade
            Então o produto pode ser adicionado ao carrinho

            Cenário: Deve permitir apenas 10 produtos por venda
            Quando a quantidade de produtos for menor ou igual a 10
            E eu clicar em "adicionar ao carrinho"
            Então será permitido a inclusão da compra no carrinho

            Cenário: Quando eu clicar no botão "limpar" deve voltar ao estado original
            Quando eu clicar no botão "limpar"
            Então o carrinho deve voltar ao estado original (vazio)


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



            Funcionalidade: Checkout
            Como cliente da EBAC-SHOP
            Quero fazer concluir meu cadastro
            Para finalizar minha compra

            Contexto:
            Dado que eu acesse a página de cadastro do checkout na EBAC-SHOP

            Cenário: Deve ser cadastrado com todos os dados obrigatórios, marcado com asteriscos
            Quando eu digitar todos os dados obrigatórios marcados com asteriscos
            Então deve exibir uma mensagem de sucesso

            Cenario: Ao tentar cadastrar com campos vazios, deve exibir mensagem de alerta
            Quando eu não preencher todos os campos do cadastro
            Então deve exibir uma mensagem "Atenção, existem campos vazios"

            Cenário: Não deve permitir campo e-mail com formato inválido. Sistema deve inserir uma mensagem de erro
            Quando eu digitar um email com formato inválido
            Então deve exibir uma mensagem de erro

            Esquema do Cenário: Não deve permitir campo e-mail com formato inválido
            Quando eu digitar um <e-mail> com formato inválido
            Então deve exibir uma mensagem de erro

            Exemplos:
            | Formatos inválidos | Mensagem                      |
            | "sem @             | "e-mail com formato inválido" |
            | "sem .com"         | "e-mail com formato inválido" |

