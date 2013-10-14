class CommissionOptionsPage
  include PageObject
  include DataMagic

  radio_button(:check, :id => "MasterContentBody1_radio_commission_option_0")
  radio_button(:direct_deposit, :id => "MasterContentBody1_radio_commission_option_1")
  text_field(:name_on_check, :id => "MasterContentBody1_check_name")
  text_field(:bank_name, :id => "MasterContentBody1_DirectDeposit1_txt_us_bank_name")
  text_field(:routing_number, :id => "MasterContentBody1_DirectDeposit1_txt_us_routing_number")
  text_field(:account_number, :id => "ctl00$MasterContentBody1$DirectDeposit1$txt_us_account_number")
  text_field(:confirm_account_number, :id => "ctl00$MasterContentBody1$DirectDeposit1$txt_us_account_number_confirm")
  select_list(:account_type, :id => "MasterContentBody1_DirectDeposit1_ddl_us_account_type")
  link(:update_profile, :id => "MasterContentBody1_btn_update")
  link(:my_website_info, :text => "My Website Information")

  def enter_check_info(data = {})

    select_check
    populate_page_with data_for(:enter_check_info, data)
    update_profile

  end

  def verify_check_options

    self.name_on_check.should == "Andy Warns"

  end

  def enter_direct_deposit_info(data = {})

    select_direct_deposit
    populate_page_with data_for(:enter_direct_deposit, data)
    update_profile
  end

  def verify_direct_deposit_info

    self.bank_name.should == "Wells Fargo"
    self.routing_number.should == "314074269"

  end

  def click_my_website_info

    my_website_info

  end

end