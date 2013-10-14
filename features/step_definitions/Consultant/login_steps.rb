Given(/^I am on Her Virtual Office$/) do


  count = 1

  while count == 1

    visit LoginPage

    if @browser.link(:text, "Home").exists? == false

      @browser.refresh
      count = 1

    else

      count = 2

    end


  end

  on(LoginPage).nav_to_virtual_office

end

When(/^I Login with Proper Credentials$/) do

  on(LoginPage).login

end

When(/^I Login with an Invalid ID$/) do

  on(LoginPage).login(:consultantID => '1200000')

end

Then(/^I Should see the Login Page Error Message$/) do

  @current_page.text.should include "Login failed"

end

When(/^I Login with an Invalid Password$/) do

  on(LoginPage).login(:password => 'testing32')

end

Given(/^I am on my consultants replicated site$/) do

  count = 1

  while count == 1

    visit ConsultantReplicatedSitePage

    if @browser.link(:text, "Home").exists? == false

      @browser.refresh
      count = 1

    else

      count = 2

    end


  end


end