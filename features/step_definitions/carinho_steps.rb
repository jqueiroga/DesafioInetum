Quando('adiciono o produto {string} no carrinho') do |product_name|
    @main_page.search_product(product_name)
    @main_page.click_product_byName(product_name)
    @detailProductPage.click_add_to_cart()
    @cartPage.click_to_checkout_onModal
    
end
  

Quando ('submeto a pesquisa pela categoria e adiciono o produto no carrinho:') do |table|
    @tableData = table.hashes
    index = 0
    @tableData.each do |product|
        index = index + 1

        @main_page.select_category(product["category"])
        @main_page.click_product_byName(product["name"])
        @detailProductPage.click_add_to_cart()
        
        if index < @tableData.size
            @cartPage.click_continue_shopping_onModal
        else
            @cartPage.click_to_checkout_onModal
        end
    end

    # @main_page.select_category(@product[:category])
    # @cartPage.click_add_to_cart_byName(@product[:name])
    # @cartPage.click_to_checkout

end
  
Quando('vou para a tela de checkout') do
    @cartPage.on_modal_cart?
    @cartPage.click_to_checkout_onModal
end

  
Então('verifico que o carrinho será acrescido de um produto à venda') do
    @cartPage.on_cart_page?
    @cartPage.increment_cart(@tableData.size)

end

Então('verifico que o carrinho terá {string} produto inserido') do |cartSize|
    @cartPage.on_cart_page?
    @cartPage.increment_cart(cartSize)

end

  