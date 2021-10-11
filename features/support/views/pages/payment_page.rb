class PaymentPage
  include Capybara::DSL

  def on_page?
    return page.has_css?(".navigation_page", text: "Your payment method")
  end

  def confirm_choose_payment()
    page.has_css?("h1[class='page-heading'", text: "Please choose your payment method")
  end

  def choose_payment(paymentType)
    find("p a[class='#{paymentType}']").click
  end

  def choose_bank_wire_payment()
    find("p a[class='bankwire']").click
  end

  def choose_check_payment()
    find("p a[class='cheque']").click
  end

  def confirmation_payment(paymentType)
    page.has_css?(".navigation_page", text: "#{paymentType} payment.")
   
    find("button span", text: "I confirm my order").click

  end

end
