Dado("que o usuário esteja logado no sistema com usuário de testes") do 


  @main_page.open
  @main_page.click_signin
  @signup_page.registered(@mainUser[:email],  @mainUser[:password])

  @main_page.go_to_main_screen
end

Quando("efetuo o login no sistema com usuário de teste") do
  @signup_page.registered(@mainUser[:email],  @mainUser[:password])

end

Quando("submeto minhas credenciais com usuário de teste") do 
    @signup_page.registered(@mainUser[:email],  @mainUser[:password])
end

Quando("submeto um email para criar uma nova conta") do
  @signup_page.register()

end

Então("sou redirecionado para a tela de MyAccount") do
  expect(@myaccount_page.on_page?).to be true

end

