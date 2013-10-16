Feature: Commissions Page

  As a consultant
  I want to view my commissions info

Background:
  Given I am on Her Virtual Office


  Scenario: View My Commissions Info
    When I View My Commissions Info
    Then I should see "Period: MAR2013"

  Scenario: View My Rebates Info
    When I View My Rebates Info
    Then I should see "Rebate Information"
