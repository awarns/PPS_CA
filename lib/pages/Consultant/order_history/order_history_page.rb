class OrderHistoryPage
  include PageObject
  include DataMagic


  link(:retrieve_info, :id => "MasterContentBody1_content_rep_btn_save")
  link(:status_info, :text => "Status Information")
  link(:edit_cust_info, :text => "Edit Info")
  link(:view_cust_orders, :text => "Orders")
  radio_button(:orders, :id => "MasterContentBody1_content_rep_radio_options_0")
  radio_button(:customers, :id => "MasterContentBody1_content_rep_radio_options_1")
  table(:order_history_table, :id => "MasterContentBody1_content_rep_data_orders")
  table(:order_history_cust_table, :id => "MasterContentBody1_content_rep_table_cust_list")
  text_field(:f_name, :id => "MasterContentBody1_content_rep_txt_first_name")
  text_field(:l_name, :id => "MasterContentBody1_content_rep_txt_last_name")

  in_frame(:id => "sm-frame") do |frame|
    table(:popup_text, :class => "table_style", :frame => frame)
  end

  def view_order_in_popup

    @ordernumber = order_history_table_element[1][0].text
    puts @ordernumber
    link_element(:text => @ordernumber).click

  end

  def verify_popup_order_hist

    sleep(10)
    popup_text.should =~ /.*Order Number.*/

  end

  def search_using_customer(data ={})

    populate_page_with data_for(:customer_search_ord_hist, data)
    select_customers
    retrieve_info

  end

  def verify_customer_table

    order_history_cust_table.should =~ /.*Customers.*/

  end

  def edit_info

    edit_cust_info
    sleep(4)

  end

  def view_orders

    view_cust_orders
    sleep(2)

  end

  def verify_orders_table

    order_history_table.should =~ /.*Orders.*/

  end


end