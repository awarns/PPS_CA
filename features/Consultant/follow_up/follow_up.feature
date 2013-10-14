Feature: Follow Up

  As a consultant
  I want to create follow ups


Background:
  Given I am on Her Virtual Office

  Scenario: Add a follow up
    When I add follow up
    Then I should see the follow up in my "Open" list

  Scenario: Update status of follow up
    When I change the status of an existing follow up
    Then I should see the follow up in my "Closed" list

  Scenario: Edit follow up information
    When I edit a follow up's information
    Then I should see the edited follow up in my closed list

  Scenario: Delete a follow up
    When I delete a follow up
    Then I should not see the follow up in my closed list
