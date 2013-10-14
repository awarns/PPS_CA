When(/^I Search My Acct Balance$/) do

  navigate_to(AccountBalancePage, :using => :nav_to_account_balance).search_account_balance



end


When(/^I view my order popup$/) do

  on(AccountBalancePage).verify_popup

end