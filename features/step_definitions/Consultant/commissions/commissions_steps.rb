When(/^I View My Commissions Info$/) do

  navigate_to(CommissionsPage, :using => :nav_to_commissions).view_specific_commission_period

end

When(/^I View My Rebates Info$/) do

  navigate_to(CommissionsPage, :using => :nav_to_commissions).view_rebates_info

end



Then(/^I should see "([^"]*)"$/) do |message|
  @current_page.text.should include message
end

Then(/^I should not see "([^"]*)"$/) do |message|
   @current_page.text.should_not include message
end