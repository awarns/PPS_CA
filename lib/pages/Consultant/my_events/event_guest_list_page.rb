class EventGuestListPage
  include PageObject
  include DataMagic


  text_field(:email_address, :id => "MasterContentBody1_content_rep_txt_new_email")
  text_field(:customer_f_name, :id => "MasterContentBody1_customer_info_txt_first_name")
  text_field(:customer_l_name, :id => "MasterContentBody1_customer_info_txt_last_name")
  text_field(:customer_address, :id => "MasterContentBody1_customer_info_shipping_info_txt_street_1")
  text_field(:customer_zip_code, :id => "MasterContentBody1_customer_info_shipping_info_txtPostalCode")
  text_field(:customer_email, :id => "MasterContentBody1_customer_info_txt_email")
  text_field(:customer_city, :id => "MasterContentBody1_customer_info_shipping_info_txt_city")
  link(:create_the_order_link, :id => "MasterContentBody1_content_rep_menu_btn_create_order")
  link(:save_link, :id => "MasterContentBody1_btn_save")
  link(:add_guest_link, :id => "MasterContentBody1_content_rep_add_rsvp")
  link(:edit_view, :text => "Edit/View")
  link(:delete, :text => "Delete")
  link(:preview_invites, :id => "MasterContentBody1_content_rep_btnPreview")
  link(:send_invites_now, :id => "MasterContentBody1_content_rep_btnSend")
  link(:send_invites_2, :id => "MasterContentBody1_content_rep_SendButton")
  link(:events_home, :text => "Events Home")
  link(:event_details, :text => "Event Details")
  link(:invitations, :text => "Invitations")
  link(:guest_list, :text => "Guest List")
  link(:update_link, :text => "Update")
  link(:view_invite_link, :id => "MasterContentBody1_content_rep_data_invitee_list_lnkPreview_0")
  checkbox(:can_attend, :id => "MasterContentBody1_chk_can_attend")
  table(:guest_list_table, :id => "MasterContentBody1_content_rep_data_rsvps")
  in_frame(:id => "sm-frame") do |frame|
    image(:rsvp_to_party, :alt => "RSVP to my Party!", :frame => frame)
  end

  def add_guest_to_event(data ={})

    populate_page_with data_for(:add_guest, data)
    add_guest_link
    populate_page_with data_for(:event_guest_info, data)
    save_link

  end

  def send_invites

    send_invites_now
    send_invites_2
    sleep(10)

  end

  def nav_to_invitations

    sleep(3)
    invitations

  end

  def nav_to_guest_list

    guest_list

  end

  def edit_guest

    sleep(4)
    edit_view
    sleep(2)
    check_can_attend
    update_link


  end

  def check_rsvp

    sleep(3)
    guest_list_table_element[1][5].text.should == "Y"

  end

  def preview_invitations

    preview_invites
    sleep(2)
    view_invite_link
    sleep(30)
    rsvp_to_party_element.click


  end

  def delete_guest

    sleep(3)
    delete
    sleep(5)

  end

  def create_the_order

    create_the_order_link
    @browser.alert.ok

  end






end