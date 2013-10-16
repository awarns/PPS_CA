When(/^I update my shipping info$/) do

  navigate_to(AddressInfoPage, :using => :nav_through_profile).update_shipping_info

end

Then(/^I should see my updated shipping info$/) do

  on(AddressInfoPage).verify_shipping_info

end


Then(/^I should see the error message "([^"]*)"$/) do |error_message|

   on(AddressInfoPage).error_message(error_message)

end

When(/^I use the Mailing Info Same as Shipping Link$/) do

  navigate_to(AddressInfoPage, :using => :nav_through_profile).click_mailing_same_as_shipping_link
  on(AddressInfoPage).click_update


end

Then(/^My mailing info should match my shipping info$/) do

  on(AddressInfoPage).mailing_info_should_match_shipping_info

end