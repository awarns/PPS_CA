class OrderMainPage
  include PageObject
  include DataMagic

  link(:business_supply_order, :text => /.*Business Supply Order.*/)
  link(:party_order, :text => "Party Order ($200 min)")
  link(:retail_order, :text => "Retail Customer Order")
  link(:business_expression, :text => "Business Expression")
  link(:backorders, :text => "Backorders")
  link(:bookings, :text => "Bookings")
  link(:contacts, :text => "Contacts")
  link(:gift_cert, :text => "Gift Certificates")
  link(:follow_ups, :text => "Follow-Ups")
  link(:returns, :text => "Returns")
  link(:subscriptions, :text => "Subscriptions")
  link(:continue_1, :id => "MasterContentBody1_content_rep_data_unsubmits_lnkContinue_0")
  link(:cancel, :text => "Cancel")
  div(:order_main_page, :id => "ctl00_ctl00_MasterContentBody1_content_rep_Views")

  def click_business_supply_order

    sleep(2)
    business_supply_order

  end

  def click_party_order

    sleep(2)
    party_order

  end

  def click_retail_order
    sleep(2)
    retail_order

  end

  def click_business_expression_order
    sleep(2)
    business_expression

  end

  def continue_order
    sleep(2)
    continue_1

  end

  def cancel_orders

    while order_main_page =~ /.*Cancel.*/

      cancel
      @browser.alert.ok

    end

  end

  def click_contacts

    contacts

  end

  def click_follow_ups

    follow_ups

  end

  def click_gift_cert

    gift_cert

  end

  def click_subscriptions

    subscriptions

  end


end