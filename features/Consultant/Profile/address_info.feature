Feature: Manage Your Profile > Address Information

  As a consultant
  I want to edit my Address Information Under Manage Your Profile

Background:
  Given I am on Her Virtual Office

  Scenario: Update Shipping Info
    When I update my shipping info
    Then I should see my updated shipping info

  Scenario: Mailing Info Same as Shipping
    When I use the Mailing Info Same as Shipping Link
    Then My mailing info should match my shipping info
