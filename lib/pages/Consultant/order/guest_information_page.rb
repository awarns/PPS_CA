class GuestInformationPage
  include PageObject
  include DataMagic



  checkbox(:ship_to_hostess, :id => "MasterContentBody1_chk_shipto_hostess")
  text_field(:guest_f_name, :id => "MasterContentBody1_ship_fname")
  text_field(:guest_l_name, :id => "MasterContentBody1_ship_lname")
  text_field(:guest_address, :id => "MasterContentBody1_shipping_info_txt_street_1")
  text_field(:guest_zip, :id => "MasterContentBody1_shipping_info_txtPostalCode")
  text_field(:guest_email, :id => "MasterContentBody1_email")
  link(:save_and_continue, :id => "MasterContentBody1_btn_save")
  div(:page_text, :class => "uic-main")





  def add_guest(data ={})

    populate_page_with data_for(:add_guest_party, data)

    while page_text =~ /.*First Name.*/

      save_and_continue
      sleep(2)

    end

  end



end