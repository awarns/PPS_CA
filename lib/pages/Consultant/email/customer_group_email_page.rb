class CustomerGroupEmailPage
  include PageObject
  include DataMagic


  checkbox(:copy_yourself, :id => "MasterContentBody1_chk_send_self")
  text_field(:subject, :id => "txt_subject")
  link(:send_email_link, :id => "MasterContentBody1_btn_send_email")
  link(:click_here, :text => "Click Here")

  in_frame(:id => "sm-frame") do |frame|
    link(:add_recipient, :id => "MasterContentBody1_lnk_add", :frame => frame)
    link(:recipient_list, :id => "MasterContentBody1_lnk_list", :frame => frame)
    link(:add_recipient_from_list, :text => "Add", :frame => frame)
    text_field(:add_search, :id => "MasterContentBody1_txt_add_search", :frame => frame)
    select_list(:ddl_add_options, :id => "MasterContentBody1_ddl_add_options", :frame => frame)
    button(:search, :value => "Search", :frame => frame)
  end

  link(:close_pop_up) { |page| page.div_element(:id => "simplemodal-container").link_element(:title => "Close")}

  def add_recipient_to_email(data ={})


    click_here
    sleep(3)
    add_recipient

    populate_page_with data_for(:email_recipient_list, data)
    search
    add_recipient_from_list
    close_pop_up


  end

  def send_email(data ={})

    populate_page_with data_for(:send_email, data)
    send_email_link

  end

end