class PaymentPage
  include PageObject
  include DataMagic


  DEFAULT_DATA = {
      'card_number' => '4111111111111111',
      'card_exp_date' => '1215',
      'amount' => '0.00',
      'gc_amount' => '25.00',


  }

  link(:cc_payment, :text => "+ Credit Card Payment")
  link(:gc_payment, :text => "+ Gift Certificate Payment")
  link(:edit_payment, :text => "Edit")
  text_field(:card_number, :id => "MasterContentBody1_content_rep_txt_cno")
  text_field(:card_exp_date, :id => "MasterContentBody1_content_rep_txt_cdate")
  text_field(:amount, :id => "MasterContentBody1_content_rep_txt_camount")
  text_field(:gc_num, :id => "MasterContentBody1_content_rep_txt_gcno")
  text_field(:gc_amount, :id => "MasterContentBody1_content_rep_txt_gcamt")
  select_list(:customer_list, :id => "MasterContentBody1_content_rep_dd_ccCust")
  button(:save_payment, :value => "Save Payment")
  button(:submit_order, :value => /.*S.*/)



  def checkout_with_credit_card(data = {})
      data = DEFAULT_DATA.merge(data)
    sleep(5)
    @balance = @browser.table(:class, "normal").text
    arr = @balance.split /[\$_]/
    @balance = arr[3]

    cc_payment
    self.card_number = data['card_number']
    self.card_exp_date = data['card_exp_date']
    data['amount'] = @balance
    self.amount = data['amount']

    save_payment
    sleep(2)
    submit_order

  end

  def checkout_with_gift_cert(giftcertnum)

    sleep(3)
    gc_payment
    self.gc_num = giftcertnum
    self.gc_amount = "25.00"
    save_payment

  end

  def party_checkout_propay(numberinlist, data ={})


    sleep(3)
    cc_payment
    @balance = customer_list_options


    @balance = @balance[numberinlist].split /[\$_]/
    @balance = @balance[1]

    self.customer_list = (/.*#{@balance}.*/)

    sleep(2)
    populate_page_with data_for(:checkout, data)

    data['amount'] = @balance
    self.amount = data['amount']
    save_payment

  end

  def click_submit_order

    sleep(4)
    submit_order


  end

  def fix_bad_card(data ={})
    data = DEFAULT_DATA.merge(data)

    edit_payment
    self.card_number = data['card_number']
    save_payment


  end

  def party_checkout_cst(data ={})
    data = DEFAULT_DATA.merge(data)

    @balance = @browser.table(:class, "normal").text
    arr = @balance.split /[\$_]/
    @balance = arr[3]

    cc_payment
    self.card_number = data['card_number']
    self.card_exp_date = data['card_exp_date']
    data['amount'] = @balance
    self.amount = data['amount']
    save_payment
    sleep(2)


  end


end