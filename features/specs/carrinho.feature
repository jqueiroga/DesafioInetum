#language: pt

Funcionalidade: Carrinho de Compras
    Sendo um usuário cadastrado
    Quero adicionar um ou mais produto(s) no carrinho de compras
    Para que eu possa realizar uma compra

     Contexto: Está logado no sistema
        Dado que o usuário esteja logado no sistema com usuário de testes

    @addProduct
    Cenario: Adicionar um produto no Carrinho
    
       Quando submeto a pesquisa pelo produto "Faded Short Sleeve"   
        E adiciono o produto "Faded Short Sleeve" no carrinho 
        Então verifico que o carrinho terá "1" produto inserido
         
    @addToCartByCategory
    Cenario: Adicionar um produto no Carrinho de uma determinada categoria

        Quando submeto a pesquisa pela categoria e adiciono o produto no carrinho:
            | name                   | price              | category    |
            | Faded Short Sleeve     | $16.51             | T-shirts    |                    
        Então verifico que o carrinho será acrescido de um produto à venda


@addMoreToCartByCategory @teste5
    Cenario: Adicionar mais de um produto no Carrinho de uma determinada categoria

        Quando submeto a pesquisa pela categoria e adiciono o produto no carrinho:
            | name                   | price              | category    |
            | Faded Short Sleeve     | $16.51             | T-shirts    |
            | Printed Chiffon Dress  | $16.40             | Dresses     |
        Então verifico que o carrinho será acrescido de um produto à venda