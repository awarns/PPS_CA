When(/^I update my home phone with "([^"]*)"$/) do |value|

  navigate_to(AdditionalInfoPage, :using => :nav_through_profile).enter_additional_info(:home_phone => value)

end

When(/^I update my email with "([^"]*)"$/) do |value|

  navigate_to(AdditionalInfoPage, :using => :nav_through_profile).enter_additional_info(:email => value)

end

When(/^I update my additional info$/) do

  navigate_to(AdditionalInfoPage, :using => :nav_through_profile).enter_additional_info

end

Then(/^I should see my additional info$/) do

  on(AdditionalInfoPage).verify_info

end

When(/^I go to the Additional Info Page$/) do

  navigate_to(AdditionalInfoPage, :using => :nav_through_profile)

end

Then(/^I should see my documents$/) do

  on(AdditionalInfoPage).verify_documents_exist

end

When(/^I Change My Password$/) do

  on(AdditionalInfoPage).change_password

end

When(/^I add a credit card to my profile$/) do

  on(AdditionalInfoPage).add_credit_card

end


Then(/^I should see my saved credit card with name "([^"]*)"$/) do |name|

  on(AdditionalInfoPage).verify_credit_card name

end

When(/^I edit an existing card$/) do

  on(AdditionalInfoPage).edit_credit_card

end

When(/^Delete a credit card$/) do

  on(AdditionalInfoPage).delete_card

end

Then(/^I should not see my saved credit card with name "([^"]*)"$/) do |name|

  on(AdditionalInfoPage).verify_card_does_not_exist(name)

end

When(/^delete all credit cards$/) do

  on(AdditionalInfoPage).delete_all_cards

end