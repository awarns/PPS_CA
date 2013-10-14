When(/^I choose the check option and fill out information$/) do

  navigate_to(CommissionOptionsPage, :using => :nav_through_profile).enter_check_info

end

Then(/^I should see my updated check option$/) do

  on(CommissionOptionsPage).verify_check_options

end

When(/^I choose the direct deposit option and fill out information$/) do

  navigate_to(CommissionOptionsPage, :using => :nav_through_profile).enter_direct_deposit_info

end

Then(/^I should see my updated direct deposit options$/) do

  on(CommissionOptionsPage).verify_direct_deposit_info

end
