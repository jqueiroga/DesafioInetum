Before do
  @addressesPage = AddressesPage.new
  @cartPage = CartPage.new
  @createaccount_page = CreateAccountPage.new 
  @detailProductPage = DetailProductPage.new
  @main_page = MainPage.new
  @myaccount_page = MyAccountPage.new
  @orderConfirmationPage = OrderConfirmationPage.new
  @paymentPage = PaymentPage.new
  @search_page = SearchPage.new 
  @signup_page = SignupPage.new 
  @shippingPage = ShippingPage.new


  page.driver.browser.manage.window.maximize
  #page.current_window.resize_to(1440, 900)

  #Carregando os dados do User (user.yml) e carregando para uso
  @user = Helpers::get_fixture("users")
  @mainUser = @user[0]
end

After do
  #cucumber captura e salva um screenshot temporário
  timestamp = Time.now.to_i
  temp_screeshot = page.save_screenshot("logs/temp_screeshot_#{timestamp}.png")

end
