When(/^I run my downline report in "([^"]*)"$/) do |downline_type|

  navigate_to(DownlinePage, :using => :run_downline_report).run_downline(:downline_type => downline_type)


end

Then(/^I should see my List View downline report$/) do

  on(DownlineResultsReportPage).verify_list_view_results

end

Then(/^I should see my Team View downline report$/) do

  on(DownlineResultsReportPage).verify_team_view_results

end

When(/^I setup a downline filter$/) do

  navigate_to(DownlinePage, :using => :run_downline_report).setup_filter
  on(VirtualOfficeHomePage).click_downline

end

Then(/^I should see my "([^"]*)"$/) do |filter_name|

  on(VirtualOfficeHomePage).click_downline
  on(DownlinePage).saved_filters_box_text.should include filter_name

end

When(/^I delete a filter$/) do

  navigate_to(DownlinePage, :using => :run_downline_report).delete_a_filter

end

When(/^I delete all existing filters$/) do

  navigate_to(DownlinePage, :using => :run_downline_report).delete_all_filters

end