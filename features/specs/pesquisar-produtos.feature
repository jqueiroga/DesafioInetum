#language: pt

Funcionalidade: Pesquisa de Produto
    Sendo um usuário do sistema
    Quero realizar a pesquisa de um produto
    Para que eu adicionar ao carrinho

    @pesquisa @teste3
    Cenario: Realizar pesquisa de um produto sem está logado

        Dado que acesso a página principal
        Quando submeto a pesquisa pelo produto "Faded Short Sleeve"           
        Então verifico que o produto "Faded Short Sleeve"  foi encontrado 

    @pesquisa_loggin @teste3
    Cenario: Realizar pesquisa de um produto com usuário logado

        Dado que o usuário esteja logado no sistema com usuário de testes
        Quando submeto a pesquisa pelo produto "Faded Short Sleeve"           
        Então verifico que o produto "Faded Short Sleeve"  foi encontrado 