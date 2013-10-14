class EventDetailsPage
  include PageObject
  include DataMagic


  text_field(:description, :id => "MasterContentBody1_txt_header")
  text_area(:event_details, :id => "MasterContentBody1_txt_detail")
  text_field(:address_line_1, :id => "MasterContentBody1_location_block_txt_street_1")
  text_field(:zip_code, :id => "MasterContentBody1_location_block_txtPostalCode")
  text_field(:email, :id => "MasterContentBody1_email")
  text_field(:password, :id => "MasterContentBody1_txt_hostess_password")
  text_field(:first_name, :id => "MasterContentBody1_ship_fname")
  text_field(:last_name, :id => "MasterContentBody1_ship_lname")
  text_field(:phone, :id => "ctl00_MasterContentBody1_ship_phone")
  link(:copy_link, :id => "copyLink")
  link(:save_and_continue, :id => "MasterContentBody1_btn_update")
  div(:page_text, :class => "full content")

  def enter_event_details_party_event(data ={})
    populate_page_with data_for(:party_event, data)
    copy_link

    while page_text =~ /.*Description*/

      save_and_continue
      sleep(2)

    end

  end

  def enter_event_details_non_party_event(data ={})
    populate_page_with data_for(:non_party_event, data)

    while page_text =~ /.*Description.*/

      save_and_continue
      sleep(2)

    end

  end




end