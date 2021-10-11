Dado("que acesso a página principal") do
  @main_page.open
  expect(@main_page.on_page?).to be true
end

Quando("clico na opção Sign In") do 
  @main_page.click_signin

end

Então("sou redirecionado para o Tela Principal") do
  expect(@main_page.on_page?).to be true
end

Então('verifico que estou devidamente logado') do
  expect(@main_page.logged_with(@mainUser[:firstName] +" " + @mainUser[:lastName])).to be true
end

Então('verifico que estou logado como {string}') do |userName|
  expect(@main_page.logged_with(userName)).to be true
end



