class CartPage
    include Capybara::DSL

    
    def click_add_to_cart()
        find(".button-container a[title='Add to cart']").click
    end

    def click_continue_shopping()
        find(".button-container span[title='Continue shopping']").click
    end

    def on_modal_cart?
        return page.has_css?(".clearfix")
    end
  
    def go_to_cart_page
        find(".right-block h5 a[title^='" + product_name + "']").click
        on_cart_page?
    end

    def on_cart_page?
        return page.has_css?(".navigation_page", text: "Your shopping cart")
    end

    def increment_cart(number)       
        return page.has_css?(".shopping_cart a span[class=ajax_cart_quantity]", text: number)
    end

    def click_continue_shopping_onCart()
        find("p a[title='Continue shopping']").click
    end

    def click_continue_shopping_onModal()
       find(".button-container span[title='Continue shopping']").click
    end
  
    def click_to_checkout_onModal()
        find(".button-container a[title='Proceed to checkout']").click
        
    end

    def click_proceed_to_checkout()
        find("p a[title='Proceed to checkout']").click
    end
  end
  