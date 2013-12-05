When(/^I Add product "([^"]*)" to my cart$/) do |product|

  on(ShopOnlinePage).add_product_to_cart_1(:product_search => product)
  on(ProductInformationPage).add_product_to_cart

end

When(/^I personalize using Embroidery$/) do

  on(PersonalizationPage).personalize_with_embroidery
  on(ProductInformationPage).go_back_to_products

end

When(/^I personalize using Icon-It No Text$/) do

  on(PersonalizationPage).personalize_with_icon_it_no_text
  on(ProductInformationPage).go_back_to_products

end

When(/^I setup a retail order$/) do

  navigate_to(ShopOnlinePage, :using => :consultant_retail_order)

end

When(/^I continue my order$/) do

  navigate_to(YourInvoicePage, :using => :continue_unsubmitted_order)

end

Then(/^I verify Order Totals, Product: "([^"]*)", Tax: "([^"]*)", Shipping : "([^"]*)", Total: "([^"]*)"$/) do |product, tax, shipping, total|

  visit YourInvoicePage
  sleep(3)
  @current_page.text.should include product, tax, shipping, total

end

When(/^I Remove Item "([^"]*)" from my cart$/) do |index|

  on(ShopOnlinePage).click_view_cart
  on(ProductsInYourCartPage).remove_product index

end

When(/^I continue my order with items in my cart$/) do

  navigate_all(:using => :continue_unsubmitted_order)

end

When(/^I update an item in my cart$/) do

 on(ShopOnlinePage).click_view_cart
 on(ProductsInYourCartPage).click_update_prod_in_cart

end

When(/^I personalize using none$/) do

 on(PersonalizationPage).personalize_with_none

end

When(/^I change my shipping information$/) do

 visit YourInvoicePage
 on(YourInvoicePage).click_change_shipping_info
 on(ShippingInformationPage).enter_retail_shipping_info(:address => '111 S Figueroa St', :zip_code => 'N8N 1A1')

end

When(/^I change the personalization of item "([^"]*)"$/) do |index|

  on(ShopOnlinePage).click_view_cart
  on(ProductsInYourCartPage).update_product_personalization index

end

When(/^I Submit the Order$/) do

  navigate_all(:using => :retail_checkout)

end

When(/^I cancel my unsubmitted orders$/) do

  navigate_to(OrderMainPage, :using => :consultant_retail_order).cancel_orders

end

Then(/^I should see the Order in my Order History Table$/) do


end