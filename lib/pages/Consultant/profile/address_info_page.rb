class AddressInfoPage
  include PageObject
  include DataMagic

  text_field(:ship_f_name, :id => "MasterContentBody1_ship_fname")
  text_field(:ship_l_name, :id => "MasterContentBody1_ship_lname")
  text_field(:ship_street_1, :id => "MasterContentBody1_shipping_info_1_txt_street_1")
  text_field(:zip, :id => "MasterContentBody1_shipping_info_1_txtPostalCode")
  text_field(:mail_f_name, :id => "MasterContentBody1_txt_mailing_first_name")
  text_field(:mail_l_name, :id => "MasterContentBody1_txt_mailing_last_name")
  text_field(:mail_street_1, :id => "MasterContentBody1_shipping_info_2_txt_street_1")
  text_field(:mail_zip, :id => "MasterContentBody1_shipping_info_2_txtPostalCode")
  link(:save, :id => "MasterContentBody1_btn_update")
  link(:mailing_shipping, :text => "Mailing information same as shipping.")
  link(:additional_info, :text => "Additional Information")
  div(:error, :id => "MasterContentBody1_ValidationSummary1")

  def update_shipping_info(data = {})

    populate_page_with data_for(:profile_page, data)
    save
    sleep(3)
    save

  end

  def verify_shipping_info

    self.ship_f_name.should == "Andy"
    self.ship_l_name.should == "Warns"

  end

  def error_message(text)

    self.error.should =~ /.*#{text}.*/

  end

  def click_mailing_same_as_shipping_link

      mailing_shipping

  end

  def click_update

    save

  end

  def mailing_info_should_match_shipping_info

    self.mail_f_name.should == "Andy"
    self.mail_l_name.should == "Warns"
    self.mail_street_1.should == "205 N. Nelson rd."
    self.mail_zip.should == "43219"

  end

  def click_additional_info

    additional_info

  end

end