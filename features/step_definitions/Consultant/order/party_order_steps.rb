When(/^I setup a party order$/) do

  navigate_all(:using => :consultant_party_order)

end


When(/^Add a ship to host guest to my party$/) do

  navigate_to(GuestInformationPage, :using => :party_order_add_guest).add_guest(:ship_to_hostess => 'True')

end

When(/^Add a direct ship guest to my party$/) do

  navigate_to(GuestInformationPage, :using => :party_order_add_guest).add_guest(:guest_f_name => 'Mike', :guest_l_name => 'Ross')

end

When(/^Add products to my guests$/) do

  navigate_all(:using => :party_order_add_products)

end

Then(/^I verify my party order totals,Retail:"([^"]*)",Volume:"([^"]*)",Subtotal:"([^"]*)",ShipHand:"([^"]*)",Tax:"([^"]*)",Total:"([^"]*)"$/) do |retail, volume, subtotal, shiphand, tax, total|

  on(OrderDetailsPage).order_summary_text.should include retail,volume,subtotal,shiphand,tax,total

end

When(/^I add a hostess credit item to my order$/) do

  on(OrderDetailsPage).add_item_to_party_order(:customer_list => "Hostess Credit")
  on(OrderDetailsPage).party_personalize_item_with_none

end

When(/^I verify the Party Hostess Totals Hostess Plan Base Amt "([^"]*)" Hostess Half Price "([^"]*)" Hostess Credit "([^"]*)" Exclusive Hostess Offer "([^"]*)" Hostess Overage "([^"]*)"$/) do |hbase, hhalf, hcredit, hoffer,hover|

  on(OrderDetailsPage).order_summary_text.should include hbase, hhalf, hcredit, hoffer, hover

end

When(/^I add an exclusive hostess offer price item to my order$/) do

  on(OrderDetailsPage).add_item_to_party_order(:customer_list => "Exclusive Hostess Offer", :item_code => "3848821A0000")
  on(OrderDetailsPage).party_personalize_item_with_none

end

When(/^I add a hostess half price item to my order$/) do



  on(OrderDetailsPage).add_item_to_party_order(:customer_list => "Hostess Half Price", :item_code => "3000")
  on(OrderDetailsPage).party_personalize_item_with_none

end

When(/^I add 31gives to my guests$/) do

  on(OrderDetailsPage).add_item_to_party_order(:item_code => "31givesr")
  sleep(3)
  on(OrderDetailsPage).add_item_to_party_order(:customer_list => "Mike Ross", :item_code => "31givesr")


end

When(/^I remove an item from my party order$/) do

  on(OrderDetailsPage).remove_a_product

end

When(/^I add one item to my cart$/) do

  on(OrderDetailsPage).add_item_to_party_order(:item_code => "3893")
  on(OrderDetailsPage).party_personalize_item_with_none

end

When(/^I change a guests shipping information$/) do

  on(OrderDetailsPage).change_guests_shipping_info
  on(GuestInformationPage).add_guest

end

When(/^I change a personalization option$/) do

  on(OrderDetailsPage).change_personalization

end

When(/^I add two good payments and one bad payment$/) do

  navigate_all(:using => :party_order_nav_to_checkout)
  on(PaymentPage).party_checkout_propay(1)
  on(PaymentPage).party_checkout_propay(2,:card_number => "4404040404040404")
  on(PaymentPage).party_checkout_propay(3)



end

When(/^I Submit the Party Order expecting a ProPay Error$/) do

  on(PaymentPage).click_submit_order
  sleep(10)


end

When(/^I fix my bad card$/) do

  navigate_all(:using => :party_order_nav_to_checkout)
  on(PaymentPage).fix_bad_card

end

When(/^I Submit the Party Order$/) do

  navigate_all(:using => :party_checkout)

end

When(/^I create my party order as a consultant$/) do

  navigate_all(:using => :create_order_from_event)

end

When(/^I submit my party event order$/) do

  on(OrderDetailsPage).add_item_to_party_order(:item_code => "3057")
  on(OrderDetailsPage).party_personalize_item_with_icon_it
  navigate_all(:using => :party_order_nav_to_checkout)
  on(PaymentPage).party_checkout_cst
  navigate_all(:using => :party_checkout)


end