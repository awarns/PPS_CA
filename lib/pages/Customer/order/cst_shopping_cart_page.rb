class CstShoppingCartPage
  include PageObject
  include DataMagic


  link(:personalize, :text => "[Personalize]")
  link(:remove, :text => "Remove")
  link(:back_to_products, :id => "MasterContentBody1_lnkProducts")
  link(:checkout, :id => "MasterContentBody1_lnkCheckout")
  link(:update_quantity, :id => "MasterContentBody1_PageContent_btnUpdate")
  link(:none, :text => "None")
  text_field(:qty, :id => "ctl00_ctl00_MasterContentBody1_PageContent_RadGrid1_ctl00_ctl04_txtQuantity")

  def click_checkout

    checkout

  end

  def cst_remove_product

    remove
    @browser.alert.ok
    sleep(3)

  end

  def cst_update_quantity_of_item(data ={})

    populate_page_with data_for(:cst_qty, data)
    update_quantity

  end

  def cst_update_personalization

    personalize
    sleep(3)
    none

  end

  def remove_item_from_cart

    remove

  end

end