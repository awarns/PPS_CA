class YourInvoicePage
  include PageObject
  include DataMagic


  button(:pay_for_order_button, :value => "Pay For Order")
  link(:change_shipping_info, :text => "Change Shipping Information")
  link(:back_to_products, :id => "MasterContentBody1_content_rep_HyperLink1")
  link(:view_cart, :text => "View Cart")
  link(:ok_return_policy) { |page| page.div_element(:id => "RadWindowWrapper_ctl00_ctl00_MasterContentBody1_PageContent_RadWindow2").link_element(:text => "OK")}
  button(:yes_31gives) { |page| page.div_element(:id => "RadWindowWrapper_ctl00_ctl00_MasterContentBody1_PageContent_RadWindow1").button_element(:text => "Yes")}
  button(:no_31gives) { |page| page.div_element(:id => "RadWindowWrapper_ctl00_ctl00_MasterContentBody1_PageContent_RadWindow1").button_element(:text => "No")}
  link(:cst_pay_for_order_link, :id => "MasterContentBody1_PageContent_btnOffer")

  table(:table_totals, :id => "MasterContentBody1_content_rep_DataGrid1")

  page_url "#{FigNewton.base_url}/forms/frm_temp_invoice.aspx"

  def verify_totals(product, tax, shipping, total)

    table_totals.should == product
    table_totals.should == tax
    table_totals.should == shipping
    table_totals.should == total

  end

  def click_view_cart_on_invoice

    view_cart

  end

  def click_back_to_products

    back_to_products

  end

  def click_change_shipping_info

    change_shipping_info

  end

  def pay_for_order

    sleep(4)
    pay_for_order_button

  end

  def cst_pay_for_order


    cst_pay_for_order_link
    sleep(1)
    ok_return_policy

  end

  def yes_on_31gives

    sleep(3)
    yes_31gives

  end

  def no_on_31gives

    no_31gives

  end



end