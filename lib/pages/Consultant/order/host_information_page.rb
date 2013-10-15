class HostInformationPage
  include PageObject
  include DataMagic


  text_field(:party_date, :id => "ctl00_MasterContentBody1_event_date_dateInput")
  text_field(:party_f_name, :id => "MasterContentBody1_ship_fname")
  text_field(:party_l_name, :id => "MasterContentBody1_ship_lname")
  text_field(:party_address, :id => "MasterContentBody1_shipping_info_txt_street_1")
  text_field(:party_zip_code, :id => "MasterContentBody1_shipping_info_txtPostalCode")
  text_field(:party_email, :id => "MasterContentBody1_email")
  text_field(:party_city, :id => "MasterContentBody1_shipping_info_txt_city")
  link(:save_and_continue, :id => "MasterContentBody1_btn_save")
  div(:page_text, :class => "uic-main")


  def enter_host_info(data ={})
    populate_page_with data_for(:host_information, data)

    while page_text =~ /.*First Name.*/

      save_and_continue
      sleep(2)

    end


  end

  def click_save_and_continue

    save_and_continue

  end



end