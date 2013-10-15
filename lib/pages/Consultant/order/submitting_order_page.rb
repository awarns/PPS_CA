class SubmittingOrderPage
  include PageObject


  div(:submit_message, :id => "div_submit_out")
  div(:cst_submit_message, :class => "container")
  link(:order_history, :text => "Order Hist.")
  link(:back_to_payments, :id => "MasterContentBody1_btnBackToPayments")
  table(:order_history_table, :id => "MasterContentBody1_content_rep_data_orders")


  def verify_submission

    sleep(5)

    puts submit_message

    count = 1

    while count < 4

      sleep(3)


      if submit_message =~ /.*Order.*/

        count = 5

      else

        count = count + 1

      end


    end


    submit_message.should =~ /.*Thank You.*/
    @ordernumber = @browser.div(:id, "div_submit_out").text
    @ordernumber = @ordernumber.split (/# */)
    @ordernumber = @ordernumber[1].split /[T_]/
    @ordernumber = @ordernumber[0]
    @ordernumber = @ordernumber.split (/[h_]/)
    @ordernumber = @ordernumber[0]


    order_history

    sleep(5)

    order_history_table.should =~ /.*#{@ordernumber}.*/


  end

  def cst_verify_submission

    count = 1

    while count < 4

      sleep(3)


      if submit_message =~ /.*Order.*/

        count = 5

      else

        count = count + 1

      end

  end

  def cst_propay_verify

    sleep(8)

    cst_submit_message.should =~ /.*Invalid card number.*/
    back_to_payments

  end

  def verify_subscription


    sleep(8)


  end


end