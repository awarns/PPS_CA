When(/^I create an invitation$/) do

  navigate_to(EmailPage, :using => :nav_to_email).create_an_invitation

end

When(/^I create a branded email$/) do

  navigate_to(EmailPage, :using => :nav_to_email).create_a_branded_email
  on(CustomerGroupEmailPage).add_recipient_to_email
  on(CustomerGroupEmailPage).send_email

end

When(/^I manage my contacts$/) do

  navigate_to(EmailPage, :using => :nav_to_email).manage_my_contacts

end

When(/^I import my contacts$/) do

  navigate_to(EmailPage, :using => :nav_to_email).import_my_contacts

end

When(/^I use contact us$/) do

  navigate_to(EmailPage, :using => :nav_to_email).contact_us
  on(ContactCustomerServicePage).contact_customer_service

end