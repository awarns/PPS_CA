class CstOrderPaymentPage
  include PageObject
  include DataMagic


  DEFAULT_DATA = {
      'cc_name' => 'Andy Warns',
      'cc_num' => '4111111111111111',
      'cc_exp_date' => '1215',
      'cc_code' => '123',
      'cc_address' => '123 main st',
      'cc_zip' => '43219',
      'cc_amount' => '0.00',
      'gc_amount' => '25.00',

  }


  link(:cc_payment, :text => "+ Credit Card Payment")
  link(:edit, :text => "Edit")
  link(:delete, :text => "Delete")
  link(:view, :text => "View")
  link(:save_payment, :id => "MasterContentBody1_PageContent_btn_SavePayment")
  link(:submit_order, :id => "MasterContentBody1_PageContent_btn_save")
  text_field(:cc_name, :id => "MasterContentBody1_PageContent_txt_cname")
  text_field(:cc_num, :id => "MasterContentBody1_PageContent_txt_cno")
  text_field(:cc_exp_date, :id => "MasterContentBody1_PageContent_txt_cdate")
  text_field(:cc_code, :id => "MasterContentBody1_PageContent_txt_cardcode")
  text_field(:cc_address, :id => "MasterContentBody1_PageContent_txt_cadr")
  text_field(:cc_zip, :id => "MasterContentBody1_PageContent_txt_czip")
  text_field(:cc_amount, :id => "MasterContentBody1_PageContent_txt_camount")

  def cst_checkout_with_credit_card(data ={})
    data = DEFAULT_DATA.merge(data)

    sleep(3)
    @balance = @browser.table(:class, "normal").text
    arr = @balance.split /[\$_]/
    @balance = arr[3]

    cc_payment
    sleep(3)
    self.cc_name = data['cc_name']
    self.cc_num = data['cc_num']
    self.cc_exp_date = data['cc_exp_date']
    self.cc_code = data['cc_code']
    self.cc_address = data['cc_address']
    self.cc_zip = data['cc_zip']

    data['cc_amount'] = @balance

    self.cc_amount = data['cc_amount']

    save_payment
    sleep(3)

  end

  def cst_submit_order

    submit_order

  end

  def delete_existing_payment

    delete
    sleep(4)

  end

  def edit_payment

    edit
    sleep(2)
    self.cc_num = "4111111111111111"
    self.cc_code = "123"
    save_payment

  end

end