class ContactCustomerServicePage
  include PageObject
  include DataMagic


  text_field(:subject, :id => "MasterContentBody1_content_rep_Txt_subject")
  text_area(:message, :id => "MasterContentBody1_content_rep_txt_msg")
  link(:send_email_link, :id => "MasterContentBody1_content_rep_btnSend")

  def contact_customer_service(data ={})


    populate_page_with data_for(:customer_service, data)
    send_email_link



  end




end