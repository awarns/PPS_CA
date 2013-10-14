class ShopOnlinePage
  include PageObject
  include DataMagic


  text_field(:product_search, :id => "txtSearch")
  button(:search, :value => "Search")
  link(:view_cart, :text => "View Cart")
  table(:products_table, :id => "products_table_main")
  link(:product_link) do |page|
    page.products_table_element.link_element(:index => 0)
  end



  def add_product_to_cart_1(data = {})

    populate_page_with data_for(:shop_online_page_prod_1, data)
    search
    product_link

  end

  def click_view_cart

    view_cart

  end







end