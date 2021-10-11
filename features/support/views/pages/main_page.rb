class MainPage
    include Capybara::DSL
  
    def open
      visit "/"
    end
  
    def click_signin()
      find(".login").click
    end

    def go_to_main_screen()
        find("#header_logo").click
    end
  
    def on_page?
        return page.has_css?(".columns-container .container")
    end

    def logged_with(username)
        return page.has_xpath?("//div//a//span[contains(text(), '" + username.to_s+ "')]")
    end

    def search_product(product_name)
        find("#searchbox input[name='search_query']").set product_name

        click_button "submit_search"

    end
      
    def click_product_byName(product_name)
        find(".right-block h5 a[title^='" + product_name + "']").click
    end

    def select_category(category)
        find("#block_top_menu ul li a[title='"+category.to_s+"']").click
    end
  end
  