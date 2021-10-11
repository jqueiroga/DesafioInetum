Quando('confirmo os produtos do carrinho') do
    @cartPage.click_proceed_to_checkout
end

Quando('confirmo o endereço de cadastro') do
    @addressesPage.on_page?
    @addressesPage.click_process_addresses
end
  
Quando('seleciono os termos e confirmo a forma de envio') do
    @shippingPage.on_page?
    @shippingPage.confirm_terms
    @shippingPage.click_process_carrier
end
  
Quando('escolho como forma de pagamento o {string}') do |paymentType|
    @paymentType = paymentType
    if @paymentType == "Bank-wire"
        @type = "bankwire"
    elsif @paymentType == "Check"
        @type = "check"
    end

    @paymentPage.choose_payment(@type)
end
  
Quando('confirmo o pagamento do pedido') do
    @paymentPage.confirmation_payment(@paymentType)
end

Então('verifico as formas de pagamento do pedido') do
    @paymentPage.on_page?
    @paymentPage.confirm_choose_payment
end
  
Então('verifico que o pedido foi finalizado com sucesso') do
    @orderConfirmationPage.check_order_confirmation
end