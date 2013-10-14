Feature: National Conference Bucks


  As a consultant
  I want to view my national conference bucks tracker

Background:
  Given I am on Her Virtual Office


  Scenario: View National Conference Bucks Report
    When I view my national conference bucks report
    Then I should see "National Conference Bucks"
