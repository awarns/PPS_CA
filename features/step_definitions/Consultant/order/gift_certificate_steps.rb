When(/^I order a gift certificate$/) do

  navigate_to(ShopOnlinePage, :using => :consultant_retail_order).add_product_to_cart_1(:product_search => 'GIFT25')
  on(ProductInformationPage).add_product_to_cart
  sleep(5)
  on(ProductInformationPage).go_back_to_products
  navigate_to(SubmittingOrderPage,:using => :retail_checkout)
  sleep(5)

end

Then(/^I should see my gift card in my manage gift certificates table$/) do

  on(VirtualOfficeHomePage).click_order
  on(OrderMainPage).click_gift_cert
  on(ManageGiftCertificatesPage).validate_gift_cert_in_table

end

When(/^I redeem a gift cert on an order$/) do

  navigate_to(ManageGiftCertificatesPage,:using => :redeem_gift_cert).get_cert_number

  giftcertnum = @browser.table(:id, "MasterContentBody1_content_rep_dg_gc").row(:index, 1).cell(:index, 0).text

  continue_navigation_to(PaymentPage, :using => :redeem_gift_cert).checkout_with_gift_cert giftcertnum

end

When(/^I submit my order with a gift cert payment$/) do

  navigate_to(ManageGiftCertificatesPage,:using => :redeem_gift_cert)

  @giftcertnum = @browser.table(:id, "MasterContentBody1_content_rep_dg_gc").row(:index, 1).cell(:index, 0).text

  on(VirtualOfficeHomePage).click_order
  on(OrderMainPage).continue_order
  on(ShippingInformationPage).click_save_and_continue
  navigate_all(:using => :retail_checkout)

end

Then(/^I should see my gift card as redeemed$/) do

  on(VirtualOfficeHomePage).click_order
  on(OrderMainPage).click_gift_cert
  on(ManageGiftCertificatesPage).verify_redeemed_card(@giftcertnum, :status => 'Redeemed')

end