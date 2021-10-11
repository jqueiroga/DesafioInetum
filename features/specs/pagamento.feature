#language: pt

Funcionalidade: Pagamento do pedido
    Sendo um usuário cadastrado
    Quero realizar o pagamento do(s) produto(s) no carrinho de compras
    Para que o pedido seja fechado

       
    @goPaymentScreen @teste2
    Cenario: Verificando as formas de pagamento do pedido com usuário logado
        Dado que o usuário esteja logado no sistema com usuário de testes
        Quando submeto a pesquisa pelo produto "Faded Short Sleeve"    
        E adiciono o produto "Faded Short Sleeve" no carrinho 
        E confirmo os produtos do carrinho 
        E confirmo o endereço de cadastro
        E seleciono os termos e confirmo a forma de envio
        Então verifico as formas de pagamento do pedido

    @goPaymentScreenLogout
    Cenario: Verificando as formas de pagamento do pedido
        Dado que acesso a página principal
        Quando submeto a pesquisa pelo produto "Faded Short Sleeve"    
        E adiciono o produto "Faded Short Sleeve" no carrinho 
        E confirmo os produtos do carrinho 
        E efetuo o login no sistema com usuário de teste
        E confirmo o endereço de cadastro
        E seleciono os termos e confirmo a forma de envio
        Então verifico as formas de pagamento do pedido

    @finishPayment @teste6
    Cenario: Verificando as formas de pagamento do pedido com usuário logado
        Dado que o usuário esteja logado no sistema com usuário de testes
        Quando submeto a pesquisa pelo produto "Faded Short Sleeve"    
        E adiciono o produto "Faded Short Sleeve" no carrinho 
        E confirmo os produtos do carrinho 
        E confirmo o endereço de cadastro
        E seleciono os termos e confirmo a forma de envio
        E escolho como forma de pagamento o "Bank-wire" 
        E confirmo o pagamento do pedido
        Então verifico que o pedido foi finalizado com sucesso