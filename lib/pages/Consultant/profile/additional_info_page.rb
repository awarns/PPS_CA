class AdditionalInfoPage
  include PageObject
  include DataMagic

  text_field(:home_phone, :id => "MasterContentBody1_home_phone")
  text_field(:work_phone, :id => "MasterContentBody1_work_phone")
  text_field(:email, :id => "MasterContentBody1_email")
  text_field(:old_pass, :id => "MasterContentBody1_txt_oldpass")
  text_field(:new_pass, :id => "MasterContentBody1_txt_pass1")
  text_field(:new_pass_confirm, :id => "MasterContentBody1_txt_pass2")
  link(:manage_cards, :text => "Manage Cards")
  link(:manage_alerts, :text => "Manage Alerts")
  link(:change_my_password, :text => "Change My Password")
  link(:doc_1, :text => "Consultant Agreement-Terms & Conditions")
  link(:doc_2, :text => "Consent to Electronic Record")
  link(:doc_3, :text => "Consultant Guidebook - New 2013")
  link(:doc_4, :text => "Consultant Guidebook - 2012")
  link(:doc_5, :text => "Career Path - New 2013")
  link(:doc_6, :text => "Self Termination Form")
  link(:update_profile, :id => "MasterContentBody1_btn_update")
  link(:save, :id => "MasterContentBody1_btn_save")
  link(:commission_options, :text => "Commission Options")

  in_frame(:id => "sm-frame") do |frame|
    link(:add_card, :id => "MasterContentBody1_lnk_add", :frame => frame)
    text_field(:cc_name, :id =>"MasterContentBody1_txt_cname", :frame => frame)
    text_field(:cc_number, :id => "MasterContentBody1_txt_cno", :frame => frame)
    text_field(:cc_exp_date, :id => "MasterContentBody1_txt_cdate", :frame => frame)
    text_field(:cc_address, :id => "MasterContentBody1_txt_cadr", :frame => frame)
    text_field(:cc_zip, :id => "MasterContentBody1_txt_czip", :frame => frame)
    button(:save_button, :value => "Save", :frame => frame)
    table(:table_cards, :id => "MasterContentBody1_tbl_main", :frame => frame)
    link(:select_card, :text => "Select", :index => 0, :frame => frame)
    link(:delete_card_link, :text => "Delete", :index => 0, :frame => frame)
  end



  def enter_additional_info(data = {})

    populate_page_with data_for(:additional_info_page, data)
    update_profile


  end

  def verify_info

    self.home_phone.should == '(419)202-3773'
    self.work_phone.should == '(419)898-1545'
    self.email.should == 'awarns@thirtyonegifts.com'

  end

  def verify_documents_exist

    doc_1
    doc_2
    doc_3
    doc_4
    doc_5
    doc_6

  end

  def change_password(data = {})

    change_my_password
    populate_page_with data_for(:change_password_page, data)
    save

  end

  def add_credit_card(data = {})

    manage_cards
    add_card
    populate_page_with data_for(:manage_cc, data)
    save_button

  end

  def verify_credit_card(name)

    sleep(3)
    self.table_cards.should =~ /.*#{name}.*/
    self.table_cards.should =~ /.*1111.*/
    self.table_cards.should =~ /.*1215.*/

  end

  def edit_credit_card(data = {})

    manage_cards
    select_card
    populate_page_with data_for(:edit_cc, data)
    save_button


  end

  def delete_all_cards

    manage_cards

    sleep(3)
    while self.table_cards =~ /.*Delete.*/

      delete_card_link
      sleep(2)

    end

  end

  def delete_card

    manage_cards
    delete_card_link

  end

  def verify_card_does_not_exist(name)

    sleep(3)
    self.table_cards.should_not =~ /.*#{name}.*/

  end

  def click_commission_options

    commission_options

  end


end