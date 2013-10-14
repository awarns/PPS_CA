class FollowUpEntryPage
  include PageObject
  include DataMagic

  button(:update_status_button, :value => "Update Status")
  button(:save_follow_up, :value => "Save New Follow-Up")
  checkbox(:option_1, :id => "MasterContentBody1_content_rep_chk_follow_options_0")
  checkbox(:option_2, :id => "MasterContentBody1_content_rep_chk_follow_options_1")
  checkbox(:option_3, :id => "MasterContentBody1_content_rep_chk_follow_options_2")
  link(:save_contact, :id => "MasterContentBody1_content_rep_customer_info_btn_save")
  link(:return_to_follow_up_list, :id => "MasterContentBody1_content_rep_lnk_return_to_prev")
  select_list(:status_list, :id => "MasterContentBody1_content_rep_ddl_status")
  text_field(:f_name, :id => "MasterContentBody1_content_rep_customer_info_txt_first_name")
  text_field(:l_name, :id => "MasterContentBody1_content_rep_customer_info_txt_last_name")
  text_field(:address_line_1, :id => "MasterContentBody1_content_rep_customer_info_shipping_info_txt_street_1")
  text_field(:zip_code, :id => "MasterContentBody1_content_rep_customer_info_shipping_info_txtPostalCode")


  def add_a_follow_up(data ={})

    populate_page_with data_for(:follow_up_page, data)
    save_follow_up

  end

  def update_status

    self.status_list = "Closed"
    update_status_button
    sleep(5)
    return_to_follow_up_list

  end

  def edit_existing_follow_up

    self.f_name = "FollowUp"
    self.l_name = "CleanUp"
    save_contact
    return_to_follow_up_list

  end

end