class CommissionOptionsPage
  include PageObject
  include DataMagic


  text_field(:bank_number, :id => "MasterContentBody1_DirectDeposit1_txt_can_bank_number")
  text_field(:branch_number, :id => "MasterContentBody1_DirectDeposit1_txt_can_branch_number")
  text_field(:account_number, :id => "ctl00$MasterContentBody1$DirectDeposit1$txt_can_account_number")
  text_field(:confirm_account_number, :id => "ctl00$MasterContentBody1$DirectDeposit1$txt_can_account_number_confirm")
  text_field(:name_on_account, :id => "MasterContentBody1_DirectDeposit1_txt_can_name")
  link(:update_profile, :id => "MasterContentBody1_btn_update")
  link(:my_website_info, :text => "My Website Information")


  def verify_check_options

    self.name_on_check.should == "Andy Warns"

  end

  def enter_direct_deposit_info(data = {})

    populate_page_with data_for(:enter_direct_deposit, data)
    update_profile

  end

  def verify_direct_deposit_info

    self.bank_number.should == "011"
    self.branch_number.should == "01002"

  end

  def click_my_website_info

    my_website_info

  end

end