When(/^I Add a contact$/) do

  navigate_all(:using => :nav_to_contacts)
  on(MyContactsPage).add_contact

end

Then(/^I should see the contact in my contact list$/) do

  on(MyContactsPage).verify_contact_in_table

end

When(/^I search my contacts$/) do

  navigate_all(:using => :nav_to_contacts)
  on(MyContactsPage).search_contacts

end

When(/^I edit a contact$/) do

  navigate_all(:using => :nav_to_contacts)
  on(MyContactsPage).search_contacts
  on(MyContactsPage).edit_contact(:cust_f_name => "Daniel", :cust_l_name => "Hardman")

end

When(/^I add a note to a contact$/) do

  navigate_all(:using => :nav_to_contacts)
  on(MyContactsPage).add_a_note

end

When(/^I import a contact$/) do

  navigate_all(:using => :nav_to_contacts)
  on(MyContactsPage).import_contacts

end

When(/^I merge two contacts$/) do

  navigate_all(:using => :nav_to_contacts)
  on(MyContactsPage).merge_existing_contacts

end