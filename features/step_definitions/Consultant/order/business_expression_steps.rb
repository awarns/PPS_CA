When(/^I attempt to place a Business Expression Order$/) do

  navigate_all(:using => :place_business_expression_order)

end

Then(/^I should see the business expression portal$/) do


  on(BusinessExpressionPage).verify_page

end