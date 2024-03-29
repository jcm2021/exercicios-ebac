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

            Cenário: Quando eu clicar no botão "limpar" deve voltar ao estado original
            Quando eu clicar no botão "limpar"
            Então o carrinho deve voltar ao estado original (vazio)

            Cenário: Deve permitir apenas 10 produtos por venda
            Quando a quantidade de produtos for menor ou igual a 10
            E eu clicar em "adicionar ao carrinho"
            Então será permitido a inclusão da compra no carrinho

            Esquema de Cenário: Deve permitir apenas 10 produtos por venda
            Quando eu adicionar <quantidade> até 10 produtos
            E eu clicar em "adicionar no carrinho"
            Então <permissão> a inclusão da compra no carrinho
            
            Exemplos:
            | Quantidade   | Permissão     |
            | Igual a 10   | Permitido     |
            | Menor que 10 | Permitido     |
            | Maior que 10 | Não permitido |



