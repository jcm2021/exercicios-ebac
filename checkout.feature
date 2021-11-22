            #language: pt


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
            | Formatos inválidos  | Mensagem                      |
            | "matheus.com"       | "e-mail com formato inválido" |
            | "mara@hotmail.br"   | "e-mail com formato inválido" |
            | "joao@gmail"        | "e-mail com formato inválido" |
            | "www.janaian.gmail" | "e-mail com formato inválido" |
            | "www.mara.com.br"   | "e-mail com formato inválido" |

