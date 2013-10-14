class CstProductsPage
  include PageObject
  include DataMagic


  button(:search_button, :id => "MasterContentBody1_PageContent_btnSearch")
  div(:product_click, :class => "product-item")
  text_field(:search_for_item, :id => "ctl00_ctl00_MasterContentBody1_PageContent_txtSearchBox")


  def cst_add_prod_to_order(data ={})


    populate_page_with data_for(:cst_add_prod, data)
    search_button
    sleep(3)
    product_click_element.click

  end

end