When(/^I use the upload photo feature$/) do

  navigate_to(MyWebsiteInfoPage, :using => :nav_through_profile).upload_photo_to_profile

end

Then(/^I should see the upload photo screen$/) do

  on(MyWebsiteInfoPage).verify_upload_photo

end

When(/^I personalize my website$/) do

  navigate_to(MyWebsiteInfoPage, :using => :nav_through_profile).personalize_website

end

Then(/^I should see the updates on my personal website$/) do


  visit ConsultantReplicatedSitePage

  on(ConsultantReplicatedSitePage).verify_personalized_website

end