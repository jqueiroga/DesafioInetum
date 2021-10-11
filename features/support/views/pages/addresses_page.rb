class AddressesPage
  include Capybara::DSL

  def on_page?
    return page.has_css?(".navigation_page", text: "Addresses")
  end

  def click_process_addresses()
    click_button 'processAddress'
  end

end
