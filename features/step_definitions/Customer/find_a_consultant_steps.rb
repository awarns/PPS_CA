Given(/^I am on the Connect with a Consultant Page$/) do

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


end

When(/^I find a consultant using my email address$/) do


  on(LoginPage).i_have_a_consultant_email_search


end

When(/^I find a consultant using her name$/) do

  on(LoginPage).i_have_a_consultant_name_search

end

When(/^I use I need a consultant$/) do

  on(LoginPage).i_need_a_consultant_search

end

When(/^I switch consultants as a one time opportunity$/) do

  visit ConsultantReplicatedSitePage
  on(LoginPage).continue_to_site_for_one_time


end

When(/^I switch consultants permanently$/) do

  visit ConsultantReplicatedSitePage
  on(LoginPage).update_preferred_consultant

end