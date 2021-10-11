class CreateAccountPage
  include Capybara::DSL

  def on_page?
    return page.has_css?(".page-heading", text: "Create an account")
  end

  def fill_form(user)

    find("#uniform-id_gender1").click if user[:title] == "Mr."
    find("#uniform-id_gender2").click if user[:title] == "Mrs."

    find("#customer_firstname").set user[:firstName]
    find("#customer_lastname").set user[:lastName]
    find("#passwd").set user[:password]

    birthDay = user[:dateBirth]
    fill_date_of_birth(birthDay[:dayDateBirth],birthDay[:monthDateBirth],birthDay[:ageDateBirth])

    find("#uniform-newsletter").set(true) if user[:newsletter] == "true"
    find("#uniform-optin").set(true) if user[:receiveOffers] == "true"
    
    find("#company").set user[:company]
    address = user[:address]
    find("#address1").set address[:address1]
    find("#address2").set address[:address2]
    find("#city").set address[:city]
    find("#uniform-id_state").find("option", text: address[:state]).select_option 
    find("#postcode").set address[:zipCode]
    
    fill_in 'other', with: user[:addInformation]
    find("#phone").set user[:homePhone]
    find("#phone_mobile").set user[:mobilePhone]

    find("#alias").set user[:aliasAddress]

    click_button 'submitAccount'

end

  def fill_date_of_birth(day,month,age)
    find("#uniform-days").find("option", text: day).select_option      
    find("#uniform-months").find("option", text: month).select_option      
    find("#uniform-years").find("option", text: age).select_option
  end
end
