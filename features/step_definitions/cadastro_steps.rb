Quando("preencho o formulário de cadastro") do
  @createaccount_page.on_page?
  @createaccount_page.fill_form(@mainUser)

end
