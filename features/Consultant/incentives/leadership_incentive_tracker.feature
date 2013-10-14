Feature: Leadership Incentive Tracker

  As a consultant
  I want to view my leadership incentive tracker

Background:
  Given I am on Her Virtual Office

  Scenario: View Leadership Incentive Tracker
    When I view my leadership incentive tracker
    Then I should see "Leadership Incentive"