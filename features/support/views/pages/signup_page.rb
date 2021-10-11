class SignupPage
  include Capybara::DSL
  
  def on_page?
    return page.has_css?(".navigation_page", text: "	Authentication")
  end

  def registered(email, password)
    find("#email").set email
    find("#passwd").set password
    
    find("#SubmitLogin").click
  end

  def register()
    find("#email_create").set Faker::Internet.email
    
    find("#SubmitCreate").click
  end
end
