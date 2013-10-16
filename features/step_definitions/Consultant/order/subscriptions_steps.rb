When(/^I cancel my subscriptions$/) do

  navigate_to(MySubscriptionsPage, :using => :nav_to_subscriptions).cancel_existing_subscriptions

end

When(/^I order a subscription$/) do

  navigate_to(SubmittingOrderPage, :using => :nav_to_subscriptions).verify_subscription


end