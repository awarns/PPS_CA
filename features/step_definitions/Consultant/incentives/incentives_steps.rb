When(/^I View My Startswell Gen Zero Info$/) do

  navigate_to(StartswellPage, :using => :nav_through_incentives).view_generation_0


end

Then(/^I verify my Gen Zero results$/) do

  on(StartswellPage).verify_gen_0_results

end

When(/^I click the startswell TOT link$/) do

  navigate_to(StartswellPage, :using => :nav_through_incentives).click_visit_startswell

end

Then(/^I should be taken to US TOT$/) do


end

When(/^I view My Summer Dream Rewards Incentive$/) do

  navigate_to(IncentivesHomePage, :using => :nav_through_incentives).click_summer_dream_rewards

end

When(/^I view my Summer Dream Rewards Gen Zero$/) do

  on(SummerDreamRewardsPage).view_generation_0

end

Then(/^I should see my Summer Dream Rewards Gen Zero$/) do

  on(SummerDreamRewardsPage).verify_gen_0_summer_dream

end

When(/^I view my believe and achieve tracker$/) do


  navigate_to(IncentivesHomePage, :using => :nav_through_incentives).click_believe_and_achieve

end

When(/^I view my national conference bucks report$/) do

  navigate_to(IncentivesHomePage, :using => :nav_through_incentives).click_national_conference_bucks

end

When(/^I view my leadership incentive tracker$/) do

  navigate_to(IncentivesHomePage, :using => :nav_through_incentives).click_incentive_tracker

end