class EventInvitationsPage
  include PageObject
  include DataMagic

  text_field(:invitation_subject, :id => "MasterContentBody1_content_rep_txt_subject")
  text_area(:invitation_message, :id => "MasterContentBody1_content_rep_txt_message")
  radio_button(:template, :id => "MasterContentBody1_content_rep_TemplateList_btnSelectTemplate_1")
  button(:preview_invite_button, :value => "Preview Invite")
  link(:save_and_continue_to_guest_list, :id => "MasterContentBody1_content_rep_btn_update")
  link(:guest_list, :text => "Guest List")


  def enter_invitation_details(data ={})

    populate_page_with data_for(:event_invitations, data)
    save_and_continue_to_guest_list

  end

  def preview_invite(data ={})

    populate_page_with data_for(:event_invitations, data)
    preview_invite_button

  end

  def nav_to_guest_list

    guest_list

  end




end