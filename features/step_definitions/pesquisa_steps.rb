Quando('submeto a pesquisa pelo produto {string}') do |product_name|
    @main_page.search_product(product_name)
end

Quando('submeto a pesquisa pelo produto:') do |table|
    @prodData = table.rows_hash
    
    @main_page.search_product(@prodData[:nome])
    
end
  
Então('verifico que o produto {string}  foi encontrado') do |product_name|
   @search_page.has_been_found(product_name)
end