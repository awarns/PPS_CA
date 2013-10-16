When(/^I add an item to a business supply order$/) do

  navigate_all(:using => :consultant_business_supply_order)
  on(OrderDetailsPage).click_payments


end

When(/^I Business Supply Checkout$/) do

  navigate_all(:using => :business_supply_checkout)

end