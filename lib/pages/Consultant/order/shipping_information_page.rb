class ShippingInformationPage
  include PageObject
  include DataMagic


  text_field(:first_name, :id => "MasterContentBody1_ship_fname")
  text_field(:last_name, :id => "MasterContentBody1_ship_lname")
  text_field(:address, :id => "MasterContentBody1_shipping_info_txt_street_1")
  text_field(:zip_code, :id => "MasterContentBody1_shipping_info_txtPostalCode")
  text_field(:email, :id => "MasterContentBody1_email")
  text_field(:city, :id => "MasterContentBody1_shipping_info_txt_city")
  link(:save_and_continue, :id => "MasterContentBody1_btn_save")
  div(:page_text, :id => "vo-template")

  def enter_retail_shipping_info(data ={})

    sleep(3)
    populate_page_with data_for(:retail_shipping_info_page, data)

  while page_text =~ /.*First Name.*/

    save_and_continue
    sleep(2)

  end

  end

  def click_save_and_continue

    sleep(5)
    save_and_continue

  end



end