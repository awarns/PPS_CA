Given(/^I add follow up$/) do

  navigate_all(:using => :nav_to_follow_ups)
  on(FollowUpEntryPage).add_a_follow_up

end

Then(/^I should see the follow up in my "([^"]*)" list$/) do |status|

  on(MyFollowUpsPage).verify_follow_up status

end

When(/^I change the status of an existing follow up$/) do

  navigate_to(MyFollowUpsPage, :using => :nav_to_follow_ups).edit_follow_up
  on(FollowUpEntryPage).update_status


end

When(/^I edit a follow up's information$/) do

  navigate_to(MyFollowUpsPage, :using => :nav_to_follow_ups).verify_follow_up "Closed"
  on(MyFollowUpsPage).edit_follow_up
  on(FollowUpEntryPage).edit_existing_follow_up

end

Then(/^I should see the edited follow up in my closed list$/) do

  on(MyFollowUpsPage).verify_edit_follow_up

end

When(/^I delete a follow up$/) do

  navigate_to(MyFollowUpsPage, :using => :nav_to_follow_ups).delete_a_follow_up

end

Then(/^I should not see the follow up in my closed list$/) do

  on(MyFollowUpsPage).verify_delete_follow_up

end