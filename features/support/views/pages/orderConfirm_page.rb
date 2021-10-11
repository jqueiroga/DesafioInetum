class OrderConfirmationPage
  include Capybara::DSL

  def on_page?
    return page.has_css?(".navigation_page", text: "Order confirmation")
  end

  def check_order_confirmation()
    return page.has_css?(".cheque-indent strong[class='dark']", text: "Your order on My Store is complete.")
  end

end
