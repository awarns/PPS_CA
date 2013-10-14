Feature: Manage Your Profile > Additional Information

  As a consultant
  I want the ability to edit my Additional Info
  under manage my profile

Background:
  Given I am on Her Virtual Office

  Scenario: Update Additional Info
    When I update my additional info
    Then I should see my additional info

  Scenario: Home Phone is Required
    When I update my home phone with ""
    Then I should see "Required"

  Scenario: Email is Required
    When I update my email with ""
    Then I should see "Required"

  Scenario: Documents Exist
    When I go to the Additional Info Page
    Then I should see my documents

  Scenario: Change Password
    When I go to the Additional Info Page
    And I Change My Password
    Then I should see "Your password has been changed."

   Scenario: Delete All Cards
     When I go to the Additional Info Page
     And delete all credit cards

  Scenario: Add Card to Manage My Cards
    When I go to the Additional Info Page
    And I add a credit card to my profile
    Then I should see my saved credit card with name "Andy Warns"

  Scenario: Edit Card
    When I go to the Additional Info Page
    And I edit an existing card
    Then I should not see my saved credit card with name "Edit Card"

  Scenario: Delete Card
    When I go to the Additional Info Page
    And Delete a credit card
    Then I should not see my saved credit card with name "Edit Card"