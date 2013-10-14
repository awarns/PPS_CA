When(/^I add items to my retail cart$/) do

  navigate_all(:using => :customer_retail_order)


end

When(/^I remove items from my retail cart$/) do

  navigate_to(CstShoppingCartPage, :using => :customer_retail_order)
  on(CstShoppingCartPage).cst_remove_product


end

When(/^I update the quantity of an item in my retail customer cart$/) do

  navigate_to(CstProductsPage, :using => :customer_retail_order).cst_add_prod_to_order(:search_for_item => '4095')
  on(CstProductDetailsPage).cst_prod_details_add_to_cart
  on(CstProductDetailsPage).view_items_in_cart
  on(CstShoppingCartPage).cst_update_quantity_of_item(:qty => '2')

end

When(/^I update the personalization options of an item in my retail customer cart$/) do

  navigate_to(PersonalizationPage, :using => :customer_retail_order).personalize_with_none
  on(CstProductDetailsPage).view_items_in_cart
  on(CstShoppingCartPage).cst_update_personalization
  on(PersonalizationPage).personalize_with_embroidery
  on(CstProductDetailsPage).view_items_in_cart

end

When(/^I submit a customer retail order with 31gives$/) do

  navigate_all(:using => :customer_retail_order)
  on(YourInvoicePage).yes_on_31gives

end

When(/^I submit my customer order$/) do

  navigate_all(:using => :customer_checkout)

end

When(/^I delete a payment from my customer order$/) do

  navigate_all(:using => :customer_retail_order)
  on(YourInvoicePage).no_on_31gives
  on(CstOrderPaymentPage).cst_checkout_with_credit_card
  on(CstOrderPaymentPage).delete_existing_payment

end

When(/^I submit a customer retail order without 31gives$/) do

  navigate_all(:using => :customer_retail_order)
  on(YourInvoicePage).no_on_31gives

end

When(/^I submit the customer order with a bad credit card$/) do

  navigate_all(:using => :customer_retail_order)
  on(YourInvoicePage).yes_on_31gives
  navigate_to(CstOrderPaymentPage, :using => :customer_checkout).cst_checkout_with_credit_card('cc_num' => "4404040404040404")
  continue_navigation_to(SubmittingOrderPage, :using => :customer_checkout).cst_propay_verify


end

When(/^I edit the bad payment and successfully submit$/) do

  on(CstOrderPaymentPage).edit_payment
  on(CstOrderPaymentPage).cst_submit_order
  on(SubmittingOrderPage).cst_verify_submission

end

When(/^I add items to my party cart$/) do

  navigate_all(:using => :cst_party_order)

end

When(/^I add items to my party cart for ship to host$/) do

  navigate_to(CstCheckoutShippingInfoPage, :using => :cst_party_order).enter_cst_party_info(:ship_to_host => true)

end

When(/^I add items to my party cart for direct ship$/) do

  navigate_to(CstCheckoutShippingInfoPage, :using => :cst_party_order).enter_cst_party_info

end

When(/^I remove items from my party cart$/) do

  navigate_to(CstShoppingCartPage, :using => :cst_party_order)
  on(CstShoppingCartPage).cst_remove_product

end

When(/^I update the quantity of an item in my party customer cart$/) do

  navigate_to(CstProductsPage, :using => :cst_party_order).cst_add_prod_to_order(:search_for_item => '4095')
  on(CstProductDetailsPage).cst_prod_details_add_to_cart
  on(CstProductDetailsPage).view_items_in_cart
  on(CstShoppingCartPage).cst_update_quantity_of_item(:qty => '2')


end

When(/^I update the personalization options of an item in my party customer cart$/) do

  navigate_to(PersonalizationPage, :using => :cst_party_order).personalize_with_none
  on(CstProductDetailsPage).view_items_in_cart
  on(CstShoppingCartPage).cst_update_personalization
  on(PersonalizationPage).personalize_with_embroidery
  on(CstProductDetailsPage).view_items_in_cart


end

When(/^I submit a customer party order with ship to host order with 31gives$/) do

  navigate_to(CstCheckoutShippingInfoPage, :using => :cst_party_order).enter_cst_party_info(:ship_to_host => true)
  on(YourInvoicePage).cst_pay_for_order
  on(YourInvoicePage).yes_on_31gives

end

When(/^I submit a customer party order with direct ship order with 31gives$/) do

  navigate_to(CstCheckoutShippingInfoPage, :using => :cst_party_order).enter_cst_party_info
  on(YourInvoicePage).cst_pay_for_order
  on(YourInvoicePage).yes_on_31gives

end

When(/^I delete a payment from my party customer order$/) do

  navigate_all(:using => :cst_party_order)
  on(YourInvoicePage).no_on_31gives
  on(CstOrderPaymentPage).cst_checkout_with_credit_card
  on(CstOrderPaymentPage).delete_existing_payment

end

When(/^I submit the customer party order with a bad credit card$/) do

  navigate_all(:using => :cst_party_order)
  on(YourInvoicePage).yes_on_31gives
  navigate_to(CstOrderPaymentPage, :using => :customer_checkout).cst_checkout_with_credit_card('cc_num' => "4404040404040404")
  continue_navigation_to(SubmittingOrderPage, :using => :customer_checkout).cst_propay_verify

end