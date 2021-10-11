class MyAccountPage
  include Capybara::DSL

  def on_page?
    return page.has_css?(".navigation_page", text: "My account")
  end

end
