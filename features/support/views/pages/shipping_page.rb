class ShippingPage
  include Capybara::DSL

  def on_page?
    return page.has_css?(".navigation_page", text: "Shipping")
  end

  def click_process_carrier()
      click_button 'processCarrier'
     # find("button name='processAddress'").click
  end

  def confirm_terms()
     find(".checkbox span").click
  end
end
