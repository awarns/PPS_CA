class CstProductDetailsPage
  include PageObject
  include DataMagic


  link(:add_to_cart, :id => "MasterContentBody1_PageContent_btnAdd")
  link(:view_cart, :id => "lnkCart")
  link(:checkout, :id => "MasterContentBody1_lnkCheckout")
  text_field(:qty, :id => "ctl00_ctl00_MasterContentBody1_PageContent_txt_qty_to_add")

  def cst_prod_details_add_to_cart(data ={})

    populate_page_with data_for(:cst_qty, data)
    add_to_cart

  end

  def view_items_in_cart

    view_cart

  end


end