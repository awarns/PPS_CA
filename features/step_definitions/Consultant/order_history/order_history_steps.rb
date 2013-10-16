When(/^I View an Order on the Order History Page$/) do

  navigate_all(:using => :nav_to_order_history)


end

Then(/^I should see my order popup$/) do

  on(OrderHistoryPage).verify_popup_order_hist

end

When(/^I search my order history by customer$/) do

  navigate_to(OrderHistoryPage, :using => :nav_to_order_history).search_using_customer

end

Then(/^I should see my customer in the order history table$/) do

  on(OrderHistoryPage).verify_customer_table

end

When(/^Edit a customers info$/) do

  on(OrderHistoryPage).edit_info

end

When(/^view the customers orders$/) do

  on(OrderHistoryPage).view_orders

end

Then(/^I should see the orders table$/) do

  on(OrderHistoryPage).verify_orders_table

end