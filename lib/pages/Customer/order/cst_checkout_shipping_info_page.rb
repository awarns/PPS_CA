class CstCheckoutShippingInfoPage
  include PageObject
  include DataMagic

  checkbox(:ship_to_host, :id => "MasterContentBody1_PageContent_chk_shipto_hostess")
  div(:page_text, :class => "full content")
  link(:save_and_continue, :id => "MasterContentBody1_PageContent_btn_save")
  text_field(:cst_first_name, :id => "MasterContentBody1_PageContent_ship_fname")
  text_field(:cst_last_name, :id => "MasterContentBody1_PageContent_ship_lname")
  text_field(:cst_address_line_1, :id => "MasterContentBody1_PageContent_shipping_info_txt_street_1")
  text_field(:cst_zip_code, :id => "MasterContentBody1_PageContent_shipping_info_txtPostalCode")
  text_field(:cst_email, :id => "MasterContentBody1_PageContent_email")

  def enter_cst_shipping_info_retail(data ={})


    populate_page_with data_for(:cst_shipping_retail, data)

    while page_text =~ /.*First Name.*/

      save_and_continue
      sleep(2)

    end



  end

  def enter_cst_party_info(data ={})

    populate_page_with data_for(:cst_shipping_party, data)

    while page_text =~ /.*First Name.*/

      save_and_continue
      sleep(2)

    end

  end


end