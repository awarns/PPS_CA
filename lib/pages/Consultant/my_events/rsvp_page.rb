class RsvpPage
  include PageObject

  radio_button(:yes, :id => "MasterContentBody1_content_rep_radio_options_0")
  radio_button(:no_shop_online, :id => "MasterContentBody1_content_rep_radio_options_1")
  radio_button(:no_no_shopping, :id => "MasterContentBody1_content_rep_radio_options_2")
  radio_button(:no_not_attend, :id => "MasterContentBody1_content_rep_radio_options_3")
  button(:send_response, :value => "Send Response")


  def rsvp_to_party


    select_no_shop_online
    send_response

  end


end