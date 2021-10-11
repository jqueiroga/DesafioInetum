class SearchPage
    include Capybara::DSL
  
    def on_page?
        return page.has_css?(".navigation_page", text: "Search")
    end

    def has_been_found(product_name)
        has_been_found = false

        has_been_found = page.has_css?("#center_column h1 span[class='lighter']", text: product_name)

        has_been_found = page.has_css?("#center_column h1 span[class='heading-counter']", text: "1 result has been found.")
        has_been_found = page.has_css?(".product-count", text: "Showing 1 - 1 of 1 item")
        has_been_found = page.has_css?(".right-block h5 a[title^='" + product_name + "']")
        
        return has_been_found
    end
  
  end
  