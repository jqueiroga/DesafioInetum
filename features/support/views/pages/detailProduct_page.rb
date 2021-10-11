class DetailProductPage
  include Capybara::DSL

  def click_add_to_cart()
    find(".box-cart-bottom p button[name='Submit']").click
end

end
