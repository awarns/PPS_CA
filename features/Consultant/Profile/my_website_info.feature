Feature: My Website Information

  As a consultant
  I want the ability to edit my website information
  and verify the results on my personal site

Background:
  Given I am on Her Virtual Office

  Scenario: Upload Photo
    When I use the upload photo feature
    Then I should see the upload photo screen

  Scenario: Personalize Website
    When I personalize my website
    Then I should see the updates on my personal website