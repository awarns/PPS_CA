Feature: Startswell

  As a consultant
  I want to view mine and my Gen 0's
  startswell information


Background:
  Given I am on Her Virtual Office


  Scenario: View Gen 0
    When I View My Startswell Gen Zero Info
    Then I verify my Gen Zero results

  Scenario: Verify Startswell TOT Link
    When I click the startswell TOT link
    Then I should be taken to US TOT

