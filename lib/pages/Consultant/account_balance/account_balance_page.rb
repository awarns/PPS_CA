class AccountBalancePage
  include PageObject


  text_field(:start_date, :id => "ctl00_MasterContentBody1_StartDate_dateInput")
  text_field(:end_date, :id => "ctl00_MasterContentBody1_EndDate_dateInput")
  text_field(:order_number, :id => "MasterContentBody1_ordno")
  button(:go_button, :value => "Go")
  table(:acct_balance_table, :id => "ctl00_MasterContentBody1_data_transactions_ctl00")

  in_frame(:id => "sm-frame") do |frame|
    table(:popup_text, :class => "table_style", :frame => frame)
  end


  def search_account_balance

    sleep(3)
    @order = acct_balance_table_element[1][1].text

    self.order_number = @order
    go_button

    sleep(3)
    puts @order
    link_element(:text => "#{@order}").click


  end

  def verify_popup

    sleep(15)
    popup_text.should =~ /.*Order Number.*/

  end


end